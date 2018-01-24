# NAME: Calcul Vectors By Target
# PATH: Gunivers-Lib:Entity/Vectors/GetByTargetID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENT:
# - Gunivers-Lib:Utils/Import/Location (Import file)
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/ID (Import file)

# INPUT:
# - LocX (score dummy)     \
# - LocY (score dummy)      | Must be defined on both entities
# - LocZ (score dummy)     /
# - ID (score dummy)       <- Must be defined on the Target
# - TargetID (score dummy) <- Must be defined on the Source

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# NOTE:
# - If there is no entity with a ID equal to the source entity's TargetID, the given vector will be wrong ! (from the source to 0 0 0)
# - If two entities have the same ID, the vector will not be calculated !

#CODE:
# - Calculates a vector to the entity with the ID stored on the source entity's TargetID
scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ID -= @s TargetID

scoreboard players operation @s VectorX = @e[score_ID_min=0,score_ID=0] LocX
scoreboard players operation @s VectorY = @e[score_ID_min=0,score_ID=0] LocY
scoreboard players operation @s VectorZ = @e[score_ID_min=0,score_ID=0] LocZ
scoreboard players operation @s VectorX -= @s LocX
scoreboard players operation @s VectorY -= @s LocY
scoreboard players operation @s VectorZ -= @s LocZ

scoreboard players operation @e[tag=!Self] ID += @s TargetID
scoreboard players tag @s remove Self