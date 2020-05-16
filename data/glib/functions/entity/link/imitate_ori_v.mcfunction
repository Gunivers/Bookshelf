#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/imitate_ori_v
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have Glib_Link_Parent defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Glib_R_OriH dummy
scoreboard objectives add Glib_Link_Parent dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s TargetId = @s Glib_Link_Parent
function glib:entity/id/check

#   Relative Position
execute store result score @s Var1 run data get entity @s Rotation[1] 1000

execute store result score @s Var2 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s Var2 -= @s Var1

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Phi]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Old Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriH"}}]
### END DEBUG

scoreboard players operation @s Var2 -= @s Glib_R_OriH

scoreboard players operation @s Var1 += @s Var2

function glib:entity/orientation/accuracy/10-3/set_v
