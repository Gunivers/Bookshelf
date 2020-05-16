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

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

execute at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["Glib","GetVec"]}
execute store result score @s VectorX run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=area_effect_cloud,tag=GetVec,limit=1] Pos[2] 1000



scoreboard players operation @s VectorX -= @s Var1
scoreboard players operation @s VectorY -= @s Var2
scoreboard players operation @s VectorZ -= @s Var3

kill @e[tag=GetVec,type=area_effect_cloud]

scoreboard players set @s VectorSpeed 1000

### DEBUG
tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Vector_Get_By_Orientation] ["",{"text":"█ DEBUG █ ","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Vector_Get_By_Orientation"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity Vector Get_By_Actuel_Orientation","color":"green"}]
tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Vector_Get_By_Orientation] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}}]
tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Vector_Get_By_Orientation] ["",{"text":"RESULT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
