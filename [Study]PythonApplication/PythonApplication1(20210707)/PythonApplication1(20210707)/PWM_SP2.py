#!/usr/bin/env python
#-*- coding:utf-8 -*-

import RPi.GPIO as GPIO
import time

Pin		= 18

GPIO.setmode(GPIO.BCM)
GPIO.setup(Pin, GPIO.OUT)

Song	=	[4, 4, 5, 5, 4, 4, 2, 4, 4, 2, 2, 1, 4, 4, 5, 5, 4, 4, 2, 4, 2, 1, 2, 0]
List	=	[262, 294, 330, 349, 392, 440, 493, 523]
speed	=	0.5
PObj	=	GPIO.PWM(Pin, 50)
PObj.start(10)

try:
	while 1:
		for i in range(len(Song)):
			PObj.ChangeFrequency(List[Song[i]])
			if (i+1) % 7 == 0:
				print(i)
				time.sleep(speed)
			time.sleep(speed)
except KeyboardInterrupt:
	pass

PObj.stop()
GPIO.cleanup()

