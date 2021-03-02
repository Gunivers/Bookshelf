#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:move/pathfinding_ata
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Parallelizable: <true/false/global>
# Note: This function create an invisible path with armor-stand. To see this path, add to yourself the "Debug" tag

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add PathCost dummy [{"text":"GLib ","color":"gold"},{"text":"Path Cost","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# Possible moves -> 0 = terrestrial (like zombies), 1 = aerial (like bat). You can cofig your own possible moves file in entity/move/zzz_config/pathind/possible_moves/
# and link your file to the system in entity/move/zzz_child/pathfind/source
scoreboard players set @s[tag=!glib.config.override] glib.var3 0

# Maximum number of tests (default: 500)
scoreboard players set @s[tag=!glib.config.override] glib.var1 500

#__________________________________________________
# CODE

execute at @s align x align y align z positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib","Glib_Pathfind_Source"]}
summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib","Glib_Pathfind_Target"]}
scoreboard players operation @e[tag=Glib_Pathfind_Source,limit=1] glib.var3 = @s glib.var3
scoreboard players operation @e[tag=Glib_Pathfind_Target,limit=1] glib.var1 = @s glib.var1

execute as @e[tag=Glib_Pathfind_Source] run function glib:move/pathfind/child/source

# Clear
kill @e[tag=Glib_Pathfind_Target]
kill @e[tag=Glib_Pathfind_Source]

execute if entity @s[tag=!Debug] run kill @e[tag=Glib_Pathfind,tag=!Glib_Pathfind_Rewind]
execute if entity @s[tag=!Debug] as @e[tag=Glib_Pathfind] run data modify entity @s {ArmorItems:[{},{},{},{id:"air",Count:1b}]}
