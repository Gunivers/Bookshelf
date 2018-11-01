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
# - gesture (score dummy)

#Output: /

#Code:
	#timer
tag @e[scores={gestureTime=1..}] add gesture
scoreboard players remove @e[tag=gesture] gestureTime 1
tag @e[scores={gestureTime=-1}] add gesture

	#gesturePart adder
scoreboard players add @e[tag=gesture] gesturePart 1

	#gesture functions manager
execute as @e[scores={gesture=1},tag=gesture] run function gunivers-lib:system/gesture/speech
# execute as @e[scores={gesture=2},tag=gesture] run function gunivers-lib:system/gesture/<name>

	#reset
tag @e[tag=gesture] remove gesture

#######################################################################################################
# gestureTime (score dummy): It is the instances counters. Set -1 for countless uses
# gesturePart (score dummy): It is the current part of the gesture. It is used in the gesture function.
# gesture (tag): When an entity has the gesture tag, it can have a gesture
# gesture (score dummy): Set the rank of the gesture you want to use
# -----------------------------------------------------------------------------------------------------
# Gestures List:
# 1: speech
# n: <name>
