#!/usr/bin/env python
import csv
import rospy
import os, rospkg
from domaci1.srv import add_value_to_file, add_value_to_fileResponse
import math

def respons_callback(req):
	rospack = rospkg.RosPack()
	with open(os.path.join(rospack.get_path("domaci1"), "src","weather_data_nyc_centralpark_2016.csv"), 'a') as csv_file:
		writer = csv.writer(csv_file)
		fields = [req.datum, 32+req.max*9/5, 32+req.min*9/5, 32+req.avg*9/5, 0.00, 0,0]
		writer.writerow(fields)
		return add_value_to_fileResponse("Podatak je unet u fajl")
if __name__ == "__main__":		
	rospy.init_node('add_value_to_file')
	s=rospy.Service('add_value_to_file', add_value_to_file, respons_callback)
	print ("Service is ready!!!")
	rospy.spin()
