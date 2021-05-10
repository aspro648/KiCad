# DS1307 RTC breakout (Sparkfun level shifter)
# Si7021 temperature /humidity sensor
# Adafruit SD Card breakout


import os
import time
import board
import busio
import digitalio
import storage
import adafruit_sdcard

import adafruit_ds1307
import adafruit_si7021

# logging interval in seconds
interval = 300

# Connect to the card and mount the filesystem.
SD_CS = board.D7 # change as needed
spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
cs = digitalio.DigitalInOut(SD_CS)

# LED indicator
led = digitalio.DigitalInOut(board.D9)
led.direction = digitalio.Direction.OUTPUT

try:
    sdcard = adafruit_sdcard.SDCard(spi, cs)
except OSError:
    sdcard = False

if sdcard:
    vfs = storage.VfsFat(sdcard)
    storage.mount(vfs, "/sd")

# Change to the appropriate I2C clock & data pins here!
i2c_bus = busio.I2C(board.SCL, board.SDA, frequency=100000)  # 100kHz based on DS1307 datasheet

# Create the RTC instance:
try:
    rtc = adafruit_ds1307.DS1307(i2c_bus)
except ValueError:
    rtc = False
    print("Unable to locate RTC")

sensor = adafruit_si7021.SI7021(i2c_bus)


# This helper function will print the contents of the SD
def print_directory(path, tabs=0):
    for file in os.listdir(path):
        stats = os.stat(path+"/"+file)
        filesize = stats[6]
        isdir = stats[0] & 0x4000

        if filesize < 1000:
            sizestr = str(filesize) + " bytes"
        elif filesize < 1000000:
            sizestr = "%0.1f KB" % (filesize/1000)
        else:
            sizestr = "%0.1f MB" % (filesize/1000000)

        prettyprintname = ""
        for _ in range(tabs):
            prettyprintname += "   "
        prettyprintname += file
        if isdir:
            prettyprintname += "/"
        print('{0:<40} Size: {1:>10}'.format(prettyprintname, sizestr))

        # recursively print directory contents
        if isdir:
            print_directory(path+"/"+file, tabs+1)


if sdcard:
    print("\nFiles on filesystem:")
    print("====================")
    print_directory("/sd")
    print()
else:
    print("\nNo SD card found\n")

# pylint: disable-msg=bad-whitespace
# pylint: disable-msg=using-constant-test
if False:   # change to True if you want to set the time!
    #                     year, mon, date, hour, min, sec, wday, yday, isdst
    t = time.struct_time((2020,  3,   17,   15,  41,  00,    0,   -1,    -1))
    # you must set year, mon, date, hour, min, sec and weekday
    # yearday is not supported, isdst can be set but we don't do anything with it at this time
    if rtc:
        print("Setting time to:", t)     # uncomment for debugging
        rtc.datetime = t
        print()
#pylint: enable-msg=using-constant-test
#pylint: enable-msg=bad-whitespace

# Main loop:
while True:
    if rtc:
        t = rtc.datetime
    else:
        t = time.localtime(time.time())

    #print(t)     # uncomment for debugging
    dt = "{}/{}/{}".format(t.tm_mon, t.tm_mday, t.tm_year)
    if interval < 60:
        tm = "{}:{:02}:{:02}".format(t.tm_hour, t.tm_min, t.tm_sec)
    else:
        tm = "{}:{:02}".format(t.tm_hour, t.tm_min)

    if sdcard:
        print("%s, %s, %0.1f C, %0.1f%s -> writen to file" % (dt, tm, sensor.temperature, sensor.relative_humidity, "%"))
        print("(%0.1f, %0.1f)" % (sensor.temperature, sensor.relative_humidity))
        with open("/sd/data.csv", "a") as f:
            f.write("%s, %s, %0.1f, %0.1f\n" % (dt, tm, sensor.temperature, sensor.relative_humidity))
        led.value = True
        time.sleep(1)
        led.value = False
    else:
        print("%s, %s, %0.1f C, %0.1f%s" % (dt, tm, sensor.temperature, sensor.relative_humidity, "%"))
    time.sleep(interval - 1)

