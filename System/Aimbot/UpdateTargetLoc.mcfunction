# NAME: Update Target Location
# PATH: Gunivers-Lib:System/Aimbot/UpdateTargetLoc

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# - 

# VERSION: 1.0
# MINECRAFT: 1.12.2

# CHILD OF: System/Aimbot/Main

# INPUT:
# - TargetID

# OUTPUT:
# - 

# NOTE:
# -

# CONFIGURATION:
# -

# CODE:

scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ID -= @s TargetID

execute @e[score_ID_min=0,score_ID=0] ~ ~ ~ function Gunivers-Lib:Entity/Location/Get

scoreboard players operation @e[tag=!Self] ID += @s TargetID
scoreboard players tag @s remove Self