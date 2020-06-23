#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/get_by_actual_orientation
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var run data get entity @s Pos[0] 1000
execute store result score @s glib.var2 run data get entity @s Pos[1] 1000
execute store result score @s glib.var3 run data get entity @s Pos[2] 1000

execute at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["Glib","GetVec"]}
execute store result score @s VectorX run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[2] 1000



scoreboard players operation @s VectorX -= @s glib.var
scoreboard players operation @s VectorY -= @s glib.var2
scoreboard players operation @s VectorZ -= @s glib.var3

kill @e[tag=GetVec,type=area_effect_cloud]

scoreboard players set @s VectorSpeed 1000

# Start Debug
execute if entity @a[tag=Glib_Debug_entity.vector.get_by_actual_orientation] run tellraw @a[tag=Glib_Debug] [{"text":"> DEBUG | glib:entity/vector/get_by_actual_orientation","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove Glib_Debug_entity.vector.get_by_actual_orientation"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @a[tag=Glib_Debug_entity.vector.get_by_actual_orientation] run function glib:core/debug/message/info/entity_info
execute if entity @a[tag=Glib_Debug_entity.vector.get_by_actual_orientation] run function glib:entity/vector/debug/display_vector
execute if entity @a[tag=Glib_Debug_entity.vector.get_by_actual_orientation] run function glib:core/debug/message/info/end_debug
# End Debug
