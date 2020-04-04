#! /usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import sys
import math as m
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from threading import Thread

def manual(pub,in1,in2):
	global vel
	vel.linear.x,vel.linear.y,vel.linear.z = float(in1),0,0
	vel.angular.x,vel.angular.y,vel.angular.z = 0,0,float(in2)
	#print('')
	#rospy.loginfo("Linear Velocity: %f Angular Velocity: %f\n",vel.linear.x,vel.angular.z)
	pub.publish(vel)
	return 
def scale_angle(angle):
	if(angle>m.pi):
		angle=angle-m.pi*2
	elif(angle<-m.pi):
		angle=angle+m.pi*2
	return angle
def auto(pub):
	global pose_and_orient,mode,rate,in1,in2,vel,isNewData,theta_g,isReached
	k_beta=-1
	k_alpha= 10
	while mode=='a':
		if isNewData:
			isNewData = False
			pose = pose_and_orient.pose.pose.position
			orient = pose_and_orient.pose.pose.orientation
			dx,dy = float(in1)-pose.x, float(in2)-pose.y

			ro = m.sqrt(dx**2+dy**2) 
			lmbd = m.atan2(dy,dx)
			_,_,yaw = euler_from_quaternion([orient.x,orient.y,orient.z,orient.w])
			theta=yaw

			alpha=scale_angle(lmbd-theta)
			beta=scale_angle(-lmbd+theta_g)

			k_ro=(k_alpha+k_beta*5/3)/(ro*2/m.pi)
			k_ro=k_ro*0.5

			if (alpha <-m.pi/2 or alpha>m.pi/2): 
				k_ro=-abs(k_ro) 
				alpha=scale_angle(alpha-m.pi)
				beta=scale_angle(beta-m.pi)
			else:
				k_ro=abs(k_ro)
			if(ro<0.02):
				alpha=0
				beta=theta-theta_g
			v=k_ro*ro
			w=k_alpha*alpha+k_beta*beta
				
			if(ro>0.1): # if you are not close to the target go with constant speed, otherwise not
				const=v/w
				v_const=0.2
				v=m.copysign(v_const,v)
				w=v/const	 
			if(ro<0.05):
				v = 0
				#print("\nThe target is reached!")
				if(abs(theta-theta_g)<5*m.pi/180):
					w=0
					isReached=True
					print("\nThe orientation and target is reached!")
			vel.linear.x,vel.linear.y,vel.linear.z = v,0,0
			vel.angular.x,vel.angular.y,vel.angular.z = 0,0,w 
			#rospy.loginfo("Linear Velocity: %f Angular Velocity: %\n",vel.linear.x,vel.angular.z)
			pub.publish(vel)
			if isReached:
				break
	return 

def callback(data):
	global pose_and_orient
	pose_and_orient = data
	global isNewData
	isNewData = True
	return

if __name__ == "__main__":
	# initialize node and create publisher and subscriber
	rospy.init_node('main',anonymous=True)
	pub = rospy.Publisher('cmd_vel', Twist, queue_size = 3)
	rospy.Subscriber("odom", Odometry, callback)
	rate = rospy.Rate(10)
	vel = Twist()
	pose_and_orient = Odometry()
	in1,in2 = 0,0,
	while True:
		print("-------------------------")
		print("For manual mode type 'm'")
		print("For auto mode type 'a'")
		print("To set a target type 'x y'")
		print("To exit type 'e'")
		print("-------------------------")
		print("--->"),
		input_task = raw_input()
		if input_task in ['a','m','e']:
			mode = input_task
		else:
			try:
				if 'mode' not in locals():
					print("\n### Choose a mode before placing the target ###\n")
					continue
				in1,in2 = input_task.split(' ')
				in1 = float(in1)
				in2 = float(in2)
				if(mode=='a'):
					theta_g = raw_input("Provide orientation of the robot in degrees: ")
					theta_g = float(theta_g)*m.pi/180
					isReached = False
					
				print("\nNew target is set!\n")
			except:
				print("\n### Wrong arguments ###\n")
				
		if mode == 'm':
			manual(pub,in1,in2)
			rate.sleep()
		elif mode == 'a':
			if ('theta_g' not in globals() or isReached):
				continue
			auto_thread = Thread(target=auto,args=(pub,))
			auto_thread.start()
		elif mode == 'e':
			break;
