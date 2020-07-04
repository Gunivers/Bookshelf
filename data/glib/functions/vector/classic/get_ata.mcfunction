#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/get_ata
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

execute store result score vectorX glib.var0 run data get entity @s Pos[0] 1000
execute store result score vectorY glib.var0 run data get entity @s Pos[1] 1000
execute store result score vectorZ glib.var0 run data get entity @s Pos[2] 1000

summon armor_stand ~ ~ ~ {Tags:["glib","glib.getVector"],Invisible:1}
execute store result score @s glib.res0 run data get entity @e[type=armor_stand,tag=glib.getVector,limit=1] Pos[0] 1000
execute store result score @s glib.res1 run data get entity @e[type=armor_stand,tag=glib.getVector,limit=1] Pos[1] 1000
execute store result score @s glib.res2 run data get entity @e[type=armor_stand,tag=glib.getVector,limit=1] Pos[2] 1000

scoreboard players operation @s glib.res0 -= vectorX glib.var0
scoreboard players operation @s glib.res1 -= vectorY glib.var0
scoreboard players operation @s glib.res2 -= vectorZ glib.var0

kill @e[tag=glib.getVector,type=armor_stand]

### DEBUG
execute if entity @a[tag=glib.debug.vector.classic.get_ata] run tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_As_To_At]=-","color":"green"}]
execute if entity @a[tag=glib.debug.vector.classic.get_ata] run tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
