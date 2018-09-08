# NAME: Block to Id
# PATH: gunivers-lib: gunivers-lib:functions/object/block/block_to_id

# AUTHOR: theogiraudet
# CONTRIBUTORS: (optional)
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Var1 (score dummy)

# Output:
# - Var1 (score dummy)

# NOTE: Allow to get the id of the block at the position of the entity

# CODE:
#____________________________________________________________________________________________________


scoreboard players set @s Var1 0
execute unless block ~ ~ ~ #gunivers-lib:group/group0 run scoreboard players add @s Var1 512
execute unless block ~ ~ ~ #gunivers-lib:group/group1 run scoreboard players add @s Var1 256
execute unless block ~ ~ ~ #gunivers-lib:group/group2 run scoreboard players add @s Var1 128
execute unless block ~ ~ ~ #gunivers-lib:group/group3 run scoreboard players add @s Var1 64
execute unless block ~ ~ ~ #gunivers-lib:group/group4 run scoreboard players add @s Var1 32
execute unless block ~ ~ ~ #gunivers-lib:group/group5 run scoreboard players add @s Var1 16
execute unless block ~ ~ ~ #gunivers-lib:group/group6 run scoreboard players add @s Var1 8
execute unless block ~ ~ ~ #gunivers-lib:group/group7 run scoreboard players add @s Var1 4
execute unless block ~ ~ ~ #gunivers-lib:group/group8 run scoreboard players add @s Var1 2
execute unless block ~ ~ ~ #gunivers-lib:group/group9 run scoreboard players add @s Var1 1