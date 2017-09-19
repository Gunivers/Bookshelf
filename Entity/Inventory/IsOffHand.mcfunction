#IsOffHand
#@Author: theogiraudet

#Version: 1.0
#Minecraft Version: 1.12

#Requirement:
# - isOffHand (dummy)

#Input values:
# - None

#Output values:
# - score (isOffHand)



#Code
scoreboard players tag @a remove isOffHand
scoreboard players tag @a add isOffHand {Inventory:[{Slot:-106b}]}