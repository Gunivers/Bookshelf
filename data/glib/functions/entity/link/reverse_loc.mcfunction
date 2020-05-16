#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/reverse_loc
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have Glib_Link_Parent defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy

scoreboard objectives add Glib_R_LocX dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_R_LocZ dummy

scoreboard objectives add Glib_Link_Parent dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s TargetId = @s Glib_Link_Parent
function glib:entity/id/check

#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

execute store result score @s Var4 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s Var5 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s Var6 run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[2] 1000

scoreboard players operation @s Var4 -= @s Var1
scoreboard players operation @s Var5 -= @s Var2
scoreboard players operation @s Var6 -= @s Var3

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Loc]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative X: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}},{"text":".   Old Relative X: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"Var5"}},{"text":".   Old Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"Var6"}},{"text":".   Old Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocZ"}}]
### END DEBUG

scoreboard players operation @s Var4 -= @s Glib_R_LocX
scoreboard players operation @s Var5 -= @s Glib_R_LocY
scoreboard players operation @s Var6 -= @s Glib_R_LocZ

scoreboard players operation @s Var1 -= @s Var4
scoreboard players operation @s Var2 -= @s Var5
scoreboard players operation @s Var3 -= @s Var6

function glib:entity/location/accuracy/10-3/set

function glib:entity/link/update_link_x
function glib:entity/link/update_link_y
function glib:entity/link/update_link_z
