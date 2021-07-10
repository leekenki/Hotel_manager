#!/usr/bin/env python
#-*- coding:utf-8 -*-

import RPi.GPIO as GPIO
import time

def button1(channel):
	print("버튼1 눌림")

def button2(channel):
	print("버튼2 눌림")

Button1=17
Button2=27

GPIO.setmode(GPIO.BCM)
GPIO.setup(Button1, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.setup(Button2, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.add_event_detect(Button1, GPIO.RISING, callback=button1, bouncetime=300)
GPIO.add_event_detect(Button2, GPIO.RISING, callback=button2, bouncetime=300)
try:
	while 1:
		time.sleep(0.1)
except KeyboardInterrupt:
	GPIO.cleanup()

