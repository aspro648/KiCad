
//
// Russ Hughes implementation of Hersey fonts for Turtle Robot
// https://github.com/russhughes/TinyBasicPlus in turn based on work by
// Paul Bourke at http://paulbourke.net/dataformats/hershey/
// 

#include "ClassBot.h"

// Stepper wiring set in ClassBot.cpp
//	left is connected to pins 10, 12, 13, 11
//  right is connected to pins 4, 6, 5, 3
//  Pen servo is connected to pin 8
//
//	Other functions are available from the simplified ClassBot class are:
//
//	void penDown();		                                  set pen down
//  void penUp();		                                    pick pen up
//  void forward(long distance);	                      move forward distance in mm
//  void backward(long distance);	                      move back distance in mm
//  void left(float degrees);		                        turn left in degrees
//  void right(float degrees);		                      turn right in degrees
//  void done();					                              pen up and motors off
//	void square(int len);			                          draw square with size mm
//	void star(int len, int points);	                    draw a start with points number of points and len mm long
//	void goTo(long x, long y, float scale, byte penUp); Goto coordinate X,Y, assume scale with pen up or down
//	void ClassBot::ch(char ch, float scale);	          Write a character at given scale
//	void text(char *message, float scale);		          Write a string at given scale
//
//	The ClassBot class used with TinyBasicPlus has more functions available
//

void setup()
{
    ClassBot bot;

    // draw letter A with scale=2

    int scale = 2;
    //bot.square(100);
    bot.ch('T', scale);
    bot.ch('U', scale);
    bot.ch('N', scale);
    bot.ch('A', scale);
    bot.done();
}

void loop()
{

}

