# NAME: Reverse X
# PATH: gunivers-lib:entity/link/reverse_loc

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Vars (module)
# - Id (module)
# - Location (module)
# - Relative Location (module)
# Must be linked to an entity

# INPUT:

# OUTPUT:

# NOTE:

# CONFIGURATION:

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check


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

function gunivers-lib:entity/location/accurate/set_y

function gunivers-lib:entity/link/update_link_y