#IsOffHand
#@Author: theogiraudet

#Version: 1.0
#Minecraft Version: 1.12

#Requirement:
# - isOffHand (dummy)

#Input values:
# - None

#Output values:
# - score (IsOffHand)



#Code
scoreboard players tag @a remove IsOffHand
scoreboard players tag @a add IsOffHand {Inventory:[{Slot:-106b}]}