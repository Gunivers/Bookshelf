# NAME: Simple Move
# PATH: gunivers-lib:entity/location/simplemove

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:

execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

scoreboard players operation @s Var1 += @s VectorX
scoreboard players operation @s Var2 += @s VectorY
scoreboard players operation @s Var3 += @s VectorZ

function gunivers-lib:entity/location/advanced/set