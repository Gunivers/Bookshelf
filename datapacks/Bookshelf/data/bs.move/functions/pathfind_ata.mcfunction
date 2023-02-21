#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:pathfinding_ata
# Documentation: https://bs-core.readthedocs.io//entity#move
# Parallelizable: <true/false/global>
# Note: This function create an invisible path with armor-stand. To see this path, add to yourself the "Debug" tag

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add PathCost dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Path Cost","color":"aqua"}]

#__________________________________________________
# CONFIG

# Possible moves -> 0 = terrestrial (like zombies), 1 = aerial (like bat). You can cofig your own possible moves file in entity/move/zzz_config/pathind/possible_moves/
# and link your file to the system in entity/move/zzz_child/pathfind/source
scoreboard players set @s[tag=!bs.config.override] bs.in.3 0

# Maximum number of tests (default: 500)
scoreboard players set @s[tag=!bs.config.override] bs.in.1 500

#__________________________________________________
# CODE

execute at @s align x align y align z positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["bs","bs_Pathfind_Source"]}
summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["bs","bs_Pathfind_Target"]}
scoreboard players operation @e[tag=bs_Pathfind_Source,limit=1] bs.in.3 = @s bs.in.3
scoreboard players operation @e[tag=bs_Pathfind_Target,limit=1] bs.in.1 = @s bs.in.1

execute as @e[tag=bs_Pathfind_Source] run function bs.move:pathfind/child/source

# Clear
kill @e[tag=bs_Pathfind_Target]
kill @e[tag=bs_Pathfind_Source]

execute if entity @s[tag=!Debug] run kill @e[tag=bs_Pathfind,tag=!bs_Pathfind_Rewind]
execute if entity @s[tag=!Debug] as @e[tag=bs_Pathfind] run data modify entity @s {ArmorItems:[{},{},{},{id:"air",Count:1b}]}