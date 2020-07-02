#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/get_by_actual_orientation
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Output: @s Res0 (score) : Vector X
# Output: @s Res1 (score) : Vector Y
# Output: @s Res2 (score) : Vector Z

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute store result score @s glib.var1 run data get entity @s Pos[1] 1000
execute store result score @s glib.var2 run data get entity @s Pos[2] 1000

execute at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["Glib","GetVec"]}
execute store result score @s VectorX run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[2] 1000



scoreboard players operation @s VectorX -= @s glib.var0
scoreboard players operation @s VectorY -= @s glib.var1
scoreboard players operation @s VectorZ -= @s glib.var2

kill @e[tag=GetVec,type=area_effect_cloud]

scoreboard players set @s VectorSpeed 1000

# Start Debug
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run tellraw @a[tag=glib.debug] [{"text":"> DEBUG | glib:vector/get_by_actual_orientation","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove glib.debug.entity.vector.get_by_actual_orientation"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run function glib:core/debug/message/info/entity_info
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run function glib:vector/zzz_debug/display_vector
execute if entity @a[tag=glib.debug.entity.vector.get_by_actual_orientation] run function glib:core/debug/message/info/end_debug
# End Debug
