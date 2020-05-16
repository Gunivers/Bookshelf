#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/get_as_to_at
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

summon armor_stand ~ ~ ~ {Tags:["Glib","GetVec"],Invisible:1}
execute store result score @s VectorX run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[2] 1000

scoreboard players operation @s VectorX -= @s Var1
scoreboard players operation @s VectorY -= @s Var2
scoreboard players operation @s VectorZ -= @s Var3

kill @e[tag=GetVec,type=armor_stand]

scoreboard players set @s VectorSpeed 1000

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_As_To_At]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
