#!/bin/env python2

from time import sleep
import serial

# Se vengono usate schede Arduino compatibili con chip seriale
# CH340G modificare '/dev/ttyACM0' in '/dev/ttyUSB0'

try:
	ardu = serial.Serial('/dev/ttyACM0', 9600)
	ardu.readline()
except serial.serialutil.SerialException:
	print "Collega Arduino"
	exit(1)

while True:
	try:
		data = ardu.readline()
		data = data.split(' ')
		data[3] = data[3][:2]
		#print data
		temp1 = data[0]
		temp2 = data[1]
		temp3 = data[2]
		temp4 = data[3]
		#print temp1
		#print temp2
		#print temp3
		#print temp4
		with open('/tmp/temp1', 'w') as file1:
			file1.write(temp1)
		with open('/tmp/temp2', 'w') as file2:
			file2.write(temp2)
		with open('/tmp/temp3', 'w') as file3:
			file3.write(temp3)
		with open('/tmp/temp4', 'w') as file4:
			file4.write(temp4)
		sleep(0.5)
	except:
		continue
