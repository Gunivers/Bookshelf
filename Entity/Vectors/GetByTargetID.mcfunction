# Get Vector by Target

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Gunivers-Lib:Entity/Vectors/Normalize (mcfunction)
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)
# - ID (score dummy)
# - TargetId (score dummy)

# Input values:
# - LocX (score dummy) (On the source and on the target)
# - LocY (score dummy) (On the source and on the target)
# - LocZ (score dummy) (On the source and on the target)
# - ID (On the Target)
# - TargetID (On the source)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

#Note: 
# If there is no entity with a ID equal to the source entity's TargetID, the given vector will be wrong ! (from the source to 0 0 0)
# If two entities have the same ID, the vector will not be calculated !

#Calculates a vector to the entity with the ID stored on the source entity's TargetID
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