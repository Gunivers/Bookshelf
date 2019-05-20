# NAME: Imitate Theta
# PATH: gunivers-lib:entity/link/imitate_ori_t

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# NOTE:
# @s must be linked to an entity

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy

scoreboard objectives add Glib_R_OriH dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check


#   Relative Position
execute store result score @s Var1 run data get entity @s Rotation[0] 1000

execute store result score @s Var2 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000

scoreboard players operation @s Var2 -= @s Var1

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Theta]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Theta: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Old Relative Theta: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriV"}}]
### END DEBUG

scoreboard players operation @s Var2 -= @s Glib_R_OriV

scoreboard players operation @s Var1 += @s Var2



function gunivers-lib:entity/orientation/accurate/set_t