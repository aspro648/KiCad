# Write your code here :-)

# MCP1702 pin swap
# Pad size
# P16 no annalog

from microbit import *
from math import pi, radians

# robot specific parameters
wheel_dia = 51  # mm (increase = decrease distance
wheel_base = 71.75  # mm (increase = spiral in)
PEN_DOWN = 120   # angle of servo when pen is down
PEN_UP = 10    # angle of servo when pen is up

steps_rev = 512    # 512 for 64x gearbox, 128 for 16x gearbox
delay_time = 2   # time between steps in ms


display.off()
pin4.write_digital(0)

L_stepper_pins = [pin0, pin6, pin7, pin1]
R_stepper_pins = [pin8, pin9, pin10, pin13]

# stepper patterns
patterns = [[1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 1, 1], [1, 0, 0, 1]]

def step(distance):
    steps = distance * steps_rev / (wheel_dia * pi)
    if steps-int(steps) > 0.5:
        return int(steps + 1)
    else:
        return int(steps)

def forward(distance):
    steps = step(distance)
    for x in range(steps):
        for pattern in range(len(patterns)):
            for bit in range(len(patterns[pattern])):  # fwd_mask[num]:
                L_stepper_pins[bit].write_digital(patterns[pattern][bit])
                R_stepper_pins[bit].write_digital(patterns[::-1][pattern][bit])
                # L_stepper[bit].value = patterns[pattern][bit]
                # R_stepper[bit].value = patterns[::-1][pattern][bit]
            # sleep(0.1)

def penup():
    Servo(pin15).write_angle(PEN_UP)

def pendown():
    Servo(pin15).write_angle(PEN_DOWN)


class Servo:
    def __init__(self, pin, freq=50, min_us=600, max_us=2400, angle=180):
        self.min_us = min_us
        self.max_us = max_us
        self.us = 0
        self.freq = freq
        self.angle = angle
        self.analog_period = 0
        self.pin = pin
        analog_period = round((1/self.freq) * 1000)  # hertz to miliseconds
        self.pin.set_analog_period(analog_period)

    def write_us(self, us):
        us = min(self.max_us, max(self.min_us, us))
        duty = round(us * 1024 * self.freq // 1000000)
        self.pin.write_analog(duty)
        sleep(100)
        self.pin.write_digital(0)  # turn the pin off

    def write_angle(self, degrees=None):
        if degrees is None:
            degrees = degrees(radians)
        degrees = degrees % 360
        total_range = self.max_us - self.min_us
        us = self.min_us + total_range * degrees // self.angle
        self.write_us(us)


penup()
sleep(1000)
pendown()
forward(100)
