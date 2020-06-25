#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/imitate_ori
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

scoreboard objectives add glib.link.r.v dummy
scoreboard objectives add glib.link.r.h dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.id.target = @s glib.link.to
function glib:entity/id/check

execute store result score @s glib.var0 run data get entity @s Rotation[0] 1000
execute store result score @s glib.var1 run data get entity @s Rotation[1] 1000

execute store result score @s glib.var2 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Rotation[0] 1000
execute store result score @s glib.var3 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s glib.var2 -= @s glib.var0
scoreboard players operation @s glib.var3 -= @s glib.var1

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Orientation]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}},{"text":".   Old Relative Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.v"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}},{"text":".   Old Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.h"}}]
### END DEBUG

scoreboard players operation @s glib.var2 -= @s glib.link.r.v
scoreboard players operation @s glib.var3 -= @s glib.link.r.h

scoreboard players operation @s glib.var0 += @s glib.var2
scoreboard players operation @s glib.var1 += @s glib.var3

function glib:entity/orientation/accuracy/10-3/set
