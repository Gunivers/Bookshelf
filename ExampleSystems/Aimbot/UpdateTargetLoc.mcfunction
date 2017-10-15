# NAME: Update Target Location
# PATH: Gunivers-Lib:ExampleSystems/Aimbot/UpdateTargetLoc
 
# AUTHOR: KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.2
 
# REQUIEREMENTS: 
# - 
 
# INPUT: 
# -
 
# OUTPUT: 
# - 
 
# NOTE:  
# -

# CONFIGURATION:
# -

# CODE:

scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] UID -= @s TargetID

execute @e[score_UID_min=0,score_UID=0] ~ ~ ~ function Gunivers-Lib:Entity/Location/Get

scoreboard players operation @e[tag=!Self] UID += @s TargetID
scoreboard players tag @s remove Self