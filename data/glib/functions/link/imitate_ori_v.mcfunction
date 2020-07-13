#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:link/imitate_ori_v
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.link.rh dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

#   Relative Position
execute store result score @s glib.var0 run data get entity @s Rotation[1] 1000

execute store result score @s glib.var1 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s glib.var1 -= @s glib.var0

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Phi]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}},{"text":".   Old Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rh"}}]
### END DEBUG

scoreboard players operation @s glib.var1 -= @s glib.link.rh

scoreboard players operation @s glib.var0 += @s glib.var1

function glib_accuracy:10-3/orientation/set_v
