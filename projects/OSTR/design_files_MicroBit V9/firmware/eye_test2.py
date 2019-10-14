from microbit import *

pin0.set_pull(pin0.PULL_UP)

while True:
    val = pin0.read_analog()
    print((val, 0))
    sleep(1000)
