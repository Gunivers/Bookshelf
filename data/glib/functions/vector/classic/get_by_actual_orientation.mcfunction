#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/get_by_actual_orientation
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Output: glib.vectorX (score dummy)
# Output: glib.vectorY (score dummy)
# Output: glib.vectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score ref.x glib run data get entity @s Pos[0] 1000
execute store result score ref.y glib run data get entity @s Pos[1] 1000
execute store result score ref.z glib run data get entity @s Pos[2] 1000

execute at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["Glib","GetVec"]}
execute store result score @s glib.vectorX run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s glib.vectorY run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s glib.vectorZ run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[2] 1000



scoreboard players operation @s glib.vectorX -= ref.x glib
scoreboard players operation @s glib.vectorY -= ref.y glib
scoreboard players operation @s glib.vectorZ -= ref.z glib

kill @e[tag=GetVec,type=area_effect_cloud]

scoreboard players set @s VectorSpeed 1000

# Start Debug
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run tellraw @a[tag=glib.debug] [{"text":"> DEBUG | glib:vector/classic/get_by_actual_orientation","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove glib.debug.entity.vector.get_by_actual_orientation"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run function glib_utils:debug/global/message/info/entity_info
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run function glib_utils:debug/vector/classic/utils/display_vector
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run function glib_utils:debug/global/message/info/end_debug
# End Debug
