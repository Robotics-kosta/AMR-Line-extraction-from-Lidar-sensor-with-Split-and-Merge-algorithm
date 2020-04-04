#!/usr/bin/env python

import rospy
from rospy_tutorials.msg import Floats
import numpy as np
from rospy.numpy_msg import numpy_msg
from std_msgs.msg import Bool,Float32
def callback(data): 
	rospy.loginfo("[Obrada.py] I heard %s", str(data.data))
	data_F = data.data
	data_C = (data_F-32)/1.8
	temp_max_C,temp_min_C,temp_avg_C = data_C
	pub1 = rospy.Publisher('akcija', Bool, queue_size = 3)
	if (temp_max_C - temp_min_C > 15):
		pub1.publish(True)
		rospy.loginfo("[Obrada.py] Publishing akcija=True")
	else:
		pub1.publish(False)
		rospy.loginfo("[obrada.py] Publishing akcija=False")
	pub2 = rospy.Publisher('prikaz', Float32, queue_size = 3)
	rospy.loginfo("[Obrada.py] Publishing prikaz="+str(temp_avg_C))
	pub2.publish(temp_avg_C)
 
def listener(): 
	rospy.init_node('Obrada_sub_and_pub', anonymous=True) 
	rospy.Subscriber('merenja', numpy_msg(Floats), callback)
	rospy.spin() 
 
if __name__ == '__main__': 
    listener()
