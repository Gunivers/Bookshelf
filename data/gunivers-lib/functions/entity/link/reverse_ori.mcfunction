# NAME: Imitate Theta
# PATH: gunivers-lib:entity/link/imitate_ori_t

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Vars (module)
# - Id (module)
# - Orientation (module)
# - Relative Orientation (module)
# Must be linked to an entity

# INPUT:

# OUTPUT:

# NOTE:

# CONFIGURATION:

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent


function gunivers-lib:entity/id/check


execute store result score @s Var1 run data get entity @s Rotation[0] 1000
execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Var3 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000
execute store result score @s Var4 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s Var3 -= @s Var1
scoreboard players operation @s Var4 -= @s Var2

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Orientation]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Theta: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Old Relative Theta: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriT"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}},{"text":".   Old Relative Phi: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriP"}}]
### END DEBUG

scoreboard players operation @s Var3 -= @s Glib_R_OriT
scoreboard players operation @s Var4 -= @s Glib_R_OriP

scoreboard players operation @s Var1 -= @s Var3
scoreboard players operation @s Var2 -= @s Var4



function gunivers-lib:entity/orientation/accurate/set

function gunivers-lib:entity/link/update_link_t
function gunivers-lib:entity/link/update_link_p