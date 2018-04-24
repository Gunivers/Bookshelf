#Name: Speech
#Path: gunivers-lib:system/gesture/speech

#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirements: /

#Input:
# - gestureTime (score dummy)
# - @s (entity)

#Output: /

#Code:
data merge entity @s[scores={gesturePart= 1}] {Pose:{Head:[0f, 0f,0f], LeftArm:[0f,0f,-6f], RightArm:[0f,0f,6f]}}
data merge entity @s[scores={gesturePart= 2}] {Pose:{Head:[1f, 0f,0f], LeftArm:[0f,1f,-5f], RightArm:[0f,1f,5f]}}
data merge entity @s[scores={gesturePart= 3}] {Pose:{Head:[2f,-1f,0f], LeftArm:[0f,2f,-3f], RightArm:[0f,2f,3f]}}
data merge entity @s[scores={gesturePart= 4}] {Pose:{Head:[3f,-1f,0f], LeftArm:[0f,3f,-2f], RightArm:[0f,3f,2f]}}
data merge entity @s[scores={gesturePart= 5}] {Pose:{Head:[4f,-1f,0f], LeftArm:[0f,4f, 0f], RightArm:[0f,4f,0f]}}
data merge entity @s[scores={gesturePart= 6}] {Pose:{Head:[5f,-1f,0f], LeftArm:[0f,5f, 0f], RightArm:[0f,5f,0f]}}
data merge entity @s[scores={gesturePart= 7}] {Pose:{Head:[4f, 0f,0f], LeftArm:[0f,4f,-2f], RightArm:[0f,4f,2f]}}
data merge entity @s[scores={gesturePart= 8}] {Pose:{Head:[3f, 0f,0f], LeftArm:[0f,3f,-3f], RightArm:[0f,3f,3f]}}
data merge entity @s[scores={gesturePart= 9}] {Pose:{Head:[2f, 0f,0f], LeftArm:[0f,2f,-5f], RightArm:[0f,2f,5f]}}
data merge entity @s[scores={gesturePart=10}] {Pose:{Head:[1f, 0f,0f], LeftArm:[0f,1f,-6f], RightArm:[0f,1f,6f]}}

#Reset
scoreboard players set @s[scores={gesturePart=11..}] gesturePart 0
