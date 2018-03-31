# NAME: Get Forward Vector
# PATH: gunivers-lib:entity/vectors/getforward

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# NOTE:
# Get the local y vector of the source entity

# CODE:
execute store result score @s Tmp1 run data get entity @s Pos[0] 1000
execute store result score @s Tmp2 run data get entity @s Pos[1] 1000
execute store result score @s Tmp3 run data get entity @s Pos[2] 1000

execute positioned ^ ^1 ^ run summon armor_stand ~ ~ ~ {Tags:["GetVec"]}
execute store result score @s VectorX run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[2] 1000

scoreboard players operation @s VectorX -= @s Tmp1
scoreboard players operation @s VectorY -= @s Tmp2
scoreboard players operation @s VectorZ -= @s Tmp3

kill @e[tag=GetVec,type=armor_stand]