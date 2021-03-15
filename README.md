# AMR-Line-extraction-from-Lidar-sensor-with-Split-and-Merge-algorithm
Extracting lines (walls) from the Lidar sensor measurements. Algorithm is tested on TurtleBot3 in Robot Operating System (ROS).
Lines are extracted using recursive Split and Merge algorithm (or [Ramer–Douglas–Peucker](https://en.wikipedia.org/wiki/Ramer%E2%80%93Douglas%E2%80%93Peucker_algorithm) algorithm)

If you ran Rviz in parallel, you could see the laser scan and visualized walls. On the following images you can see the current position of a in the world, and all the detected walls visualized in Rviz.

original environment | extracted walls
:------------------------------:|:-----------------------------------------:
<img src="https://github.com/Robotics-kosta/AMR-Line-extraction-from-Lidar-sensor-with-Split-and-Merge-algorithm/blob/master/src/images%20example/environment.png" width="200" height="400" /> | <img src="https://github.com/Robotics-kosta/AMR-Line-extraction-from-Lidar-sensor-with-Split-and-Merge-algorithm/blob/master/src/images%20example/detectedLines.png " width="200" height="400" />



