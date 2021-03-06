#!/usr/bin/env python3
import rospy
import tf
from std_msgs.msg import String
from geometry_msgs.msg import TwistStamped

class UnityPose:
    def __init__(self):
        self.lastX = 0
        self.lastY = 0
        self.lastZ = 0
        self.lastXAngle = 0
        self.lastYAngle = 0
        self.lastZAngle = 0
        rospy.Subscriber("unityChatter", TwistStamped, self.callback)
        self.pub = rospy.Publisher('/servo_server/delta_twist_cmds', TwistStamped, queue_size=10)

    def callback(self, data):
        msg = TwistStamped()
        
        x = data.twist.linear.x
        y = data.twist.linear.y
        z = data.twist.linear.z
        t = rospy.get_rostime().secs + rospy.get_rostime().nsecs*0.000000001
        print("X:", x)
        print("Y:", y)
        print("Z:", z)
        print("Time:", t)
        print("Frame ID:", data.header.frame_id)
        print("-----------------------------------------------------------")
        
        #Assign data
        msg.header.seq = data.header.seq
        msg.header.stamp.secs = rospy.get_rostime().secs
        msg.header.stamp.nsecs = rospy.get_rostime().nsecs
        msg.header.frame_id = data.header.frame_id
        msg.twist = data.twist
        
        self.pub.publish(msg)
        

if __name__ == '__main__':
    rospy.init_node('listener', anonymous=True)
    UnityPose()
    rospy.spin()
