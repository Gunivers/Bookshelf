#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:block/get
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.blockId dummy [{"text":"GLib ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s glib.blockId 0
execute unless block ~ ~ ~ #glib:block/group0 run scoreboard players add @s glib.blockId 512
execute unless block ~ ~ ~ #glib:block/group1 run scoreboard players add @s glib.blockId 256
execute unless block ~ ~ ~ #glib:block/group2 run scoreboard players add @s glib.blockId 128
execute unless block ~ ~ ~ #glib:block/group3 run scoreboard players add @s glib.blockId 64
execute unless block ~ ~ ~ #glib:block/group4 run scoreboard players add @s glib.blockId 32
execute unless block ~ ~ ~ #glib:block/group5 run scoreboard players add @s glib.blockId 16
execute unless block ~ ~ ~ #glib:block/group6 run scoreboard players add @s glib.blockId 8
execute unless block ~ ~ ~ #glib:block/group7 run scoreboard players add @s glib.blockId 4
execute unless block ~ ~ ~ #glib:block/group8 run scoreboard players add @s glib.blockId 2
execute unless block ~ ~ ~ #glib:block/group9 run scoreboard players add @s glib.blockId 1
