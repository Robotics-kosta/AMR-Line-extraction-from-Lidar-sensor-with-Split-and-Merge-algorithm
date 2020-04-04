#!/usr/bin/env python 

import rospy
from std_msgs.msg import Bool

counter = 0
def callback(flag):
	flag = flag.data
	global counter
	if flag:
		counter = counter + 1 #nece da mi inkrementira ovde a dobar boolean dobija
	rospy.loginfo("[Akcija.py] I got flag:"+str(flag))
	rospy.loginfo("[Akcija.py] Current value of the counter:"+str(counter))

if __name__ == '__main__':
    rospy.init_node("akcija_sub")
    rospy.Subscriber("akcija", Bool, callback)
    rospy.spin()

