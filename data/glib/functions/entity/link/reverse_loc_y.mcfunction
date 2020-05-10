# NAME: Reverse X
# PATH: glib:entity/link/reverse_loc

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# NOTE:
# @s must be linked to an entity

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var5 dummy

scoreboard objectives add Glib_R_LocY dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function glib:entity/id/check


#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[1] 1000

execute store result score @s Var5 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[1] 1000

scoreboard players operation @s Var5 -= @s Var1

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Loc]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"Var5"}},{"text":".   Old Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}}]
### END DEBUG

scoreboard players operation @s Var5 -= @s Glib_R_LocY

scoreboard players operation @s Var1 -= @s Var5

function glib:entity/location/accuracy/10-3/set_y

function glib:entity/link/update_link_y