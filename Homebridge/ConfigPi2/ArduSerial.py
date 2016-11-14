from time import sleep
import serial


def getdata(ser):
	data = ser.readline()
	
	data = data.split(' ')
	data[3] = data[3][:2]
	
	return data


serials = ['/dev/ttyACM0', '/dev/ttyUSB0']


connected = False


while not connected:
	
	for ser in serials:
		
		try:
			ardu = serial.Serial(ser, 9600)
			ardu.readline()
			connected = True
			
		except serial.serialutil.SerialException:
			continue

	sleep(1)


while True:
	try:
		data = getdata(ardu)
		
		with open('/tmp/temp1', 'w') as file1:
			file1.write(data[0])
			
		with open('/tmp/temp2', 'w') as file2:
			file2.write(data[1])
			
		with open('/tmp/temp3', 'w') as file3:
			file3.write(data[2])
			
		with open('/tmp/temp4', 'w') as file4:
			file4.write(data[3])
		sleep(1)
		
	except KeyboardInterrupt:
		exit(0)
		
	except:
		continue
