#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:link/reverse_loc
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy

scoreboard objectives add glib.link.rx dummy
scoreboard objectives add glib.link.ry dummy
scoreboard objectives add glib.link.rz dummy

scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

#   Relative Position
execute store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute store result score @s glib.var1 run data get entity @s Pos[1] 1000
execute store result score @s glib.var2 run data get entity @s Pos[2] 1000

execute store result score @s glib.var3 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s glib.var4 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s glib.var4 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[2] 1000

scoreboard players operation @s glib.var3 -= @s glib.var0
scoreboard players operation @s glib.var4 -= @s glib.var1
scoreboard players operation @s glib.var4 -= @s glib.var2

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Loc]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative X: ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}},{"text":".   Old Relative X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rx"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Old Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.ry"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Old Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rz"}}]
### END DEBUG

scoreboard players operation @s glib.var3 -= @s glib.link.rx
scoreboard players operation @s glib.var4 -= @s glib.link.ry
scoreboard players operation @s glib.var4 -= @s glib.link.rz

scoreboard players operation @s glib.var0 -= @s glib.var3
scoreboard players operation @s glib.var1 -= @s glib.var4
scoreboard players operation @s glib.var2 -= @s glib.var4

function glib_accuracy:10-3/location/set

function glib:link/update_link_x
function glib:link/update_link_y
function glib:link/update_link_z
