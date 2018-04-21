
#include "ClassBot.h"

ClassBot::ClassBot()
{
    rightMotor = new AccelStepper(AccelStepper::HALF4WIRE, 10, 12, 13, 11, true);  // d'oh! -- Classbot 1.0 board is backwards
    leftMotor = new AccelStepper(AccelStepper::HALF4WIRE, 4, 6, 5, 3, true);

    pinMode(8, OUTPUT);
    penServo.attach(8);
    penUp();

    leftMotor->setMaxSpeed(MAX_SPEED);
    rightMotor->setMaxSpeed(MAX_SPEED);

    motors.addStepper(*leftMotor);
    motors.addStepper(*rightMotor);
}

// Set pen down
void ClassBot::penDown()
{
    penServo.write(150);
    penIsUp = false;
    delay(200);
}

void ClassBot::penUp()
{
    penServo.write(90);
    penIsUp = true;
    delay(200);
}

void ClassBot::setStep(int which, float dist)
{
    boolean pos = dist > 0;
    steps[which] = dist;

    if (lastPos[which] != -1)
    {
        if (pos & !lastPos[which])
            steps[which] += backlashComp;
        if (!pos & lastPos[which])
            steps[which] -= backlashComp;
    }

    lastPos[which] = pos;
}

void ClassBot::backward(float distance)
{
    int s = int(distance * stepsDist);

    setStep(LEFT, -s);
    setStep(RIGHT, s);

    motors.moveTo(steps);
    motors.runSpeedToPosition();
    leftMotor->setCurrentPosition(0);
    rightMotor->setCurrentPosition(0);
}

void ClassBot::forward(float distance)
{
    int s = int(distance * stepsDist);

    setStep(LEFT, s);
    setStep(RIGHT, -s);

    motors.moveTo(steps);
    motors.runSpeedToPosition();
    leftMotor->setCurrentPosition(0);
    rightMotor->setCurrentPosition(0);
}

void ClassBot::right(float degrees)
{
    float distance = wheelBPI * (degrees / 360.0);
    int s = int(distance * stepsDist);

    setStep(LEFT, s);
    setStep(RIGHT, s);

    motors.moveTo(steps);
    motors.runSpeedToPosition();
    leftMotor->setCurrentPosition(0);
    rightMotor->setCurrentPosition(0);
}

void ClassBot::left(float degrees)
{
    float distance = wheelBPI * (degrees / 360.0);
    int s = int(distance * stepsDist);

    setStep(LEFT, -s);
    setStep(RIGHT, -s);

    motors.moveTo(steps);
    motors.runSpeedToPosition();
    leftMotor->setCurrentPosition(0);
    rightMotor->setCurrentPosition(0);
}

void ClassBot::done()
{
    penUp();
    for (int i = 2; i < 10; i++)
        digitalWrite(i, LOW);
}

void ClassBot::square(int len)
{
    penDown();
    for (int i = 1; i < 5; i++)
    {
        forward(len);
        left(90);
    }
    penUp();
}

void ClassBot::star(int len, int points)
{
    float angle;
    int i;

    penDown();
    for (i = 0; i < points; i++)
    {
        angle = 180.0 - 180.0 / points;
        forward(len);
        left(angle);
        forward(len);
    }
    penUp();
}

// Calculate the bearing (angle to turn to) from where we are (a1, a2) 
// where we want to go (b1, b2)

double ClassBot::bearing(double a1, double a2, double b1, double b2)
{
    double theta = atan2(b1 - a1, a2 - b2);
    if (theta < 0.0)
        theta += TWOPI;
    return theta * RAD2DEG;
}

// We know where we are and we want to go to x, y 
// so find out the what direction we need to turn to
// and then calculate the distance from our location
// to the destination using the Pythagorean theorem.

void ClassBot::goTo(long x, long y, float scale, byte penIsUp)
{
    double b;
    double r;
    long dx, dy, dh;

    penUp();

    if ((x != botX) || (y != botY))   // if we are not already where we want to go
    {
        b = bearing(botX, botY, x, y);    // find the direction to where we want to go

        dx = x - botX;                // calcucate how far over do we have to go
        dy = y - botY;                // calculate how far down/up we have to go
 
        r = sqrt((dx * dx) + (dy * dy));    // find the distance using the Pythagorean theorem

        dh = botH - b;                // find the difference between the direction we are facing
                                      // and the direction we need to face
        if (dh > 180)
            dh = dh - 360;

        if (dh < -180)
            dh = dh + 360;

        if (dh < 0)                 //  and turn right
            right(abs(dh));

        if (dh > 0)                 // or turn left
            left(dh);

        if (!penIsUp)               // if the pen is not supposed to be up, set it down
            penDown();

        forward(r * scale);         // move forward the distance * the scale 

        botX = x;                   // keep track of our new position 
        botY = y;
        botH = b;                   // and our new heading
    }
}

//
// Draw a character at the current location
//

void ClassBot::ch(char ch, float scale)
{
    char *vectors;
    byte c, length, width = 0, i, vX, vY, pup = true;
    int x = botX, y = botY;

    penUp();
    if ((ch > 31) && (ch < 127))
    {
        c = ch - 32;
        vectors = (char *) pgm_read_word(&simplex[c]);    // Get the address of the data for this character
        
        length  = pgm_read_byte(vectors++);       // First byte contains the number of vecotrs for this character
        width   = pgm_read_byte(vectors++);        // Second byte containt the width of the character
        while (length--)
        {
            vX = pgm_read_byte(vectors++);       // X coordinate of point
            vY = pgm_read_byte(vectors++);       // Y coordinate of point

            if ((vX == 255) && (vY == 255))               // if the value is 255,255 
            {
                pup = true;                               //  it means pick the pen up
                continue;                                 //  this is not a move
            }
            goTo(x + vX, y - vY, scale, pup);             // otherwise move to the X, Y coordinate
            if (pup)                                      // if the pen was up, set the flag to down  
                pup = false;                              
        }
    }
    penUp();                                              // We are done with this letter, pick the penup

    goTo(x + width, botY, scale, true);                   // And move to the position for the next character if any
}

//
// Same as above but run thru an entire string 
//

void ClassBot::text(char *message, float scale)
{
    char *s = message;
    char *vectors;

    byte c, length, width, i, vX, vY, pup = true;
    int x = botX, y = botY;

    penUp();

    if (s)
    {
        for (s = message; *s; s++)
        {
            if ((*s > 31) && (*s < 127))
            {
                c = byte(*s) - 32;
                vectors = (char *) pgm_read_word(&simplex[c]);
                
                length  = pgm_read_byte(vectors++);
                width   = pgm_read_byte(vectors++);
                
                while (length--)
                {
                    vX = pgm_read_byte(vectors++);
                    vY = pgm_read_byte(vectors++);

                    if ((vX == 255) && (vY == 255))
                    {
                        pup = true;
                        continue;
                    }

                    goTo(x + vX, y - vY, scale, pup);
                    if (pup)
                        pup = false;
                }
            }
            penUp();
            pup = true;
            x += width;
        }
    }
}

