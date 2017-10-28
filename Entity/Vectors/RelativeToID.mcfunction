# NAME: Vector Relative To ID
# PATH: Gunivers-Lib:Entity/Vectors/RelativeToID

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - Tmp1 (score dummy)

# INPUT:
# - VectorX (score dummy)  /!\ must be defined on both entities
# - VectorY (score dummy)  /!\ must be defined on both entities
# - VectorZ (score dummy)  /!\ must be defined on both entities
# - Tmp1 (score dummy)  <- ID

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:

function Gunivers-Lib/Entity/Id/Check

scoreboard players operation @s VectorX -= @e[c=1,tag=IdMatch] VectorX
scoreboard players operation @s VectorY -= @e[c=1,tag=IdMatch] LocY
scoreboard players operation @s VectorZ -= @e[c=1,tag=IdMatch] LocZ