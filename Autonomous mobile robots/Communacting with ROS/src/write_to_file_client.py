#!/usr/bin/env python
 
import sys
import rospy
from domaci1.srv import *
import write_to_file_server
if __name__ == "__main__":
     print(len(sys.argv))
     if len(sys.argv) == 5:
         date = sys.argv[1]  
         max_temp = int(sys.argv[2])
         min_temp = int(sys.argv[3])
         avg_temp = float(sys.argv[4])
     else:
         print("###wrong number of arguments###")
         sys.exit(1)
     print ("Requesting to write to file")
     rospy.wait_for_service('add_value_to_file')
     Service = rospy.ServiceProxy('add_value_to_file', add_value_to_file)
     response = Service(date, max_temp, min_temp,avg_temp)
     print(response)
