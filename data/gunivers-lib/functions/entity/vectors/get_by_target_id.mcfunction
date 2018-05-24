# NAME: Get Vector By TargetID
# PATH: gunivers-lib:entity/vectors/getbytargetid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/vectors
# - gunivers-lib:utils/import/location
# - gunivers-lib:utils/import/id
# - gunivers-lib:location/accurate/get

# INPUT:
# - TargetID (score dummy) : the id of the target

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# NOTE:
# Calculates the vector from the source entity to the target entity

# CODE:

execute as @s run function gunivers-lib:entity/location/get

tag @s add Source
execute as @e if @s ID = @e[tag=Source] TargetID unless entity @e[tag=Target,limit=1] run tag @s add Target

execute as @e[tag=Target] run function gunivers-lib:entity/location/get

scoreboard players operation @s VectorX = @e[tag=Target] LocX
scoreboard players operation @s VectorY = @e[tag=Target] LocY
scoreboard players operation @s VectorZ = @e[tag=Target] LocZ

scoreboard players operation @s VectorX -= @s LocX
scoreboard players operation @s VectorY -= @s LocY
scoreboard players operation @s VectorZ -= @s LocZ

tag @s remove Source 
tag @e remove Target


