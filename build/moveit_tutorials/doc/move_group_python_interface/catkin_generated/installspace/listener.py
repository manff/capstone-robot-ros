#!/usr/bin/env python3
import rospy
import globals
from std_msgs.msg import String
from geometry_msgs.msg import PoseStamped

def callback(data):
    globals.x = data.pose.position.x
    globals.y = data.pose.position.y
    globals.z = data.pose.position.z
    print("X:", globals.x)
    print("Y:", globals.y)
    print("Z:", globals.z)
    print("-----------------------------------------------------------")
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", PoseStamped, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
