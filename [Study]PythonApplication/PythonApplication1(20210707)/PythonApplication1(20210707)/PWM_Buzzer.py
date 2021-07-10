#!/usr/bin/env python
#-*- coding:utf-8 -*-

import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

GPIO.setup(18, GPIO.OUT)
#PWM 인스턴스 p를 만들고 GP10 18번을 PWM핀으로 설정, 주파수 = 100Hz
p = GPIO.PWM(18, 100)

#4옥타브 도~시, 5옥타브 도의 주파수
Frq = [ 330, 294, 262, 294, 330, 330, 330, 294, 294, 294, 330, 392, 392, 330, 294, 262, 294, 330, 330, 330, 294,  294, 330, 294, 262 ]
speed = 0.5 # 음과 음 사이 연주시간 설정 (0.5초)

p.start(10) #PWM 시작, 듀티사이클 10(충분)

try:
	while 1:
		for fr in Frq:
			p.ChangeFrequency(fr)   #주파수를 fr로 변경
			time.sleep(speed)       #speed 초만큼 딜레이 (0.5s)
except KeyboardInterrupt:
	pass
p.stop()                            #PWM을 종료
GPIO.cleanup()
