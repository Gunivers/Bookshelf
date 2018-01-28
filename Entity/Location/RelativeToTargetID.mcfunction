# NAME: Location Relative To ID
# PATH: Gunivers-Lib:Entity/Location/RelativeToID

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)
# - TargetID (score dummy)

# INPUT:
# - LocX (score dummy)  /!\ must be defined on both entities
# - LocY (score dummy)  /!\ must be defined on both entities
# - LocZ (score dummy)  /!\ must be defined on both entities
# - TargetID (score dummy)  <- ID

# OUTPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# CODE:

function Gunivers-Lib:Entity/Id/Check

scoreboard players operation @s LocX -= @e[c=1,tag=IdMatch] LocX
scoreboard players operation @s LocY -= @e[c=1,tag=IdMatch] LocY
scoreboard players operation @s LocZ -= @e[c=1,tag=IdMatch] LocZ