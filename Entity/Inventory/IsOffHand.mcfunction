# NAME: Off Hand 
# PATH: Gunivers-Lib:Entity/Inventory/IsOffHand 

# AUTHOR: Theogiraudet 

# VERSION: 1.0 
# MINECRAFT: 1.12 

# REQUIREMENTS: 

# INPUT: 

# OUTPUT: 
# - IsOffHand (tag) 


# CODE: 

scoreboard players tag @a remove IsOffHand
scoreboard players tag @a add IsOffHand {Inventory:[{Slot:-106b}]}