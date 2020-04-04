#!/usr/bin/env python

import rospy
import numpy as np
import matplotlib.pyplot as plt
from rospy.numpy_msg import numpy_msg
from std_msgs.msg import Bool,Float32

plt.ion()
fig = plt.figure()
ax = fig.add_subplot(111)
line1, = ax.plot(np.array([]),np.array([]), 'ro')
def update_plot(new_sample):
	new_sample = new_sample.data
	data_x = line1.get_xdata()
	data_y = line1.get_ydata()
	data_x = np.append(data_x,len(data_y)+1)
	data_y = np.append(data_y,new_sample)
	line1.set_data(data_x,data_y)
	rospy.loginfo("[Prikaz.py] I heard %s", str(new_sample))
	ax.relim()
    	ax.autoscale_view()
    	fig.canvas.draw()
	plt.pause(0.5)
def listener(): 
	rospy.init_node('Prikaz_sub', anonymous=True) 
	rospy.Subscriber('prikaz', numpy_msg(Float32), update_plot)
	#rospy.spin() 
	plt.show(block=True)
 
if __name__ == '__main__':
        listener()
	
