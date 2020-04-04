#!/usr/bin/env python
import os
import pandas as pd
import numpy as np
import rospy,rospkg
from rospy_tutorials.msg import Floats
from rospy.numpy_msg import numpy_msg
import csv

def talker():
	pub = rospy.Publisher('merenja', numpy_msg(Floats), queue_size = 3) 
	rospy.init_node('Merenja_pub', anonymous=True) 
	r = rospy.Rate(1) # 10 data per second
	while not rospy.is_shutdown(): # works with r.sleep()
		for i in range(np.shape(data)[0]):
    			data_to_send = np.array(data[i,0:3],dtype=np.float32)

			rospy.loginfo("[Merenja.py](max,min,avg)="+str(data_to_send))
			pub.publish(data_to_send)
			r.sleep() # ensure that data is sent at given rate
if __name__ == '__main__':
	rospack = rospkg.RosPack()
	data = np.asarray(pd.read_csv(os.path.join(rospack.get_path("domaci1"), "csv", "weather_data_nyc_centralpark_2016.csv")))
	data = np.delete(data, 0, axis=1)# brisanje kolone datuma
	try:
        	talker()
    	except rospy.ROSInterruptException:
        	pass
