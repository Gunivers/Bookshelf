#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:object/convert/block/block_to_id
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/object#block
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s BlockId 0
execute unless block ~ ~ ~ #glib:group/group0 run scoreboard players add @s BlockId 512
execute unless block ~ ~ ~ #glib:group/group1 run scoreboard players add @s BlockId 256
execute unless block ~ ~ ~ #glib:group/group2 run scoreboard players add @s BlockId 128
execute unless block ~ ~ ~ #glib:group/group3 run scoreboard players add @s BlockId 64
execute unless block ~ ~ ~ #glib:group/group4 run scoreboard players add @s BlockId 32
execute unless block ~ ~ ~ #glib:group/group5 run scoreboard players add @s BlockId 16
execute unless block ~ ~ ~ #glib:group/group6 run scoreboard players add @s BlockId 8
execute unless block ~ ~ ~ #glib:group/group7 run scoreboard players add @s BlockId 4
execute unless block ~ ~ ~ #glib:group/group8 run scoreboard players add @s BlockId 2
execute unless block ~ ~ ~ #glib:group/group9 run scoreboard players add @s BlockId 1
