#Name: gesture
#Path: gunivers-lib:system/gesture/gesture

#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirements:
# - gesture (score dummy)
# - gestureTime (score dummy)

#Input:
# - gestureTime (score dummy)
# - @s (entity)

#Output: /

#Code:
	#timer
tag @s[scores={gestureTime=1..}] add gesture
scoreboard players remove @s[tag=gesture] gestureTime 1
tag @s[scores={gestureTime=-1}] add gesture

	#gesturePart adder
scoreboard players add @s[tag=gesture] gesturePart 1

	#gesture functions manager
execute as @s[scores={gesture=1},tag=gesture] run function gunivers-lib:system/gesture/speech
#execute as @s[scores={gesture=2},tag=gesture] run function gunivers-lib:system/gesture/new_gesture

	#reset
tag @s[tag=gesture] remove gesture

#######################################################################################################
# gestureTime (score dummy): It is the instances counters. Set -1 for countless uses
# gesturePart (score dummy): It is the current part of the gesture. It is used in the gesture function.
# gesture (tag): When an entity has the gesture tag, it can have a gesture
# gesture (score dummy): Set the rank of the gesture you want to use
#######################################################################################################

#Gestures List:
# 1: speech