#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/pathfinding_as_to_at
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Note: This function create an invisible path with armor-stand. To see this path, add to yourself the "Debug" tag

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy

scoreboard objectives add PathCost dummy

#__________________________________________________
# CONFIG

# Possible moves -> 0 = terrestrial (like zombies), 1 = aerial (like bat). You can cofig your own possible moves file in entity/move/config/pathind/possible_moves/
# and link your file to the system in entity/move/child/pathfind/source
scoreboard players set @s[tag=!Glib_Override_Config] Var4 0

# Maximum number of tests (default: 500)
scoreboard players set @s[tag=!Glib_Override_Config] Var2 500

#__________________________________________________
# CODE

execute at @s align x align y align z positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib","Glib_Pathfind_Source"]}
summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib","Glib_Pathfind_Target"]}
scoreboard players operation @e[tag=Glib_Pathfind_Source,limit=1] Var4 = @s Var4
scoreboard players operation @e[tag=Glib_Pathfind_Target,limit=1] Var2 = @s Var2

execute as @e[tag=Glib_Pathfind_Source] run function glib:entity/move/child/pathfind/source

# Clear
kill @e[tag=Glib_Pathfind_Target]
kill @e[tag=Glib_Pathfind_Source]

execute if entity @s[tag=!Debug] run kill @e[tag=Glib_Pathfind,tag=!Glib_Pathfind_Rewind]
execute if entity @s[tag=!Debug] as @e[tag=Glib_Pathfind] run data modify entity @s {ArmorItems:[{},{},{},{id:"air",Count:1b}]}
