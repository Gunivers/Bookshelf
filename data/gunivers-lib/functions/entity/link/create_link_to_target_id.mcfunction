# NAME: Link to ID
# PATH: gunivers-lib:entity/link/create_link_to_target_id

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - TargetId

# NOTE:
# @s must have TargetId defined (equal to another entity id)

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add Glib_R_LocX dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_R_LocZ dummy

scoreboard objectives add Glib_R_OriV dummy
scoreboard objectives add Glib_R_OriH dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s Glib_Link_Parent = @s TargetId

function gunivers-lib:entity/id/check


#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

execute store result score @s Glib_R_LocX run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s Glib_R_LocY run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s Glib_R_LocZ run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[2] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Create_Link_By_Target_Id]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Child Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Child Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent X: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}},{"text":".   Parent Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}},{"text":".   Parent Z: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocZ"}}]
### END DEBUG

scoreboard players operation @s Glib_R_LocX -= @s Var1
scoreboard players operation @s Glib_R_LocY -= @s Var2
scoreboard players operation @s Glib_R_LocZ -= @s Var3

#   Relative Orientation
execute store result score @s Var1 run data get entity @s Rotation[0] 1000
execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Glib_R_OriV run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000
execute store result score @s Glib_R_OriH run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child Theta: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Child Phi: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent Theta: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriV"}},{"text":".   Parent Phi: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriH"}}]
### END DEBUG

scoreboard players operation @s Glib_R_OriV -= @s Var1
scoreboard players operation @s Glib_R_OriH -= @s Var2




### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff X: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}},{"text":".   Diff Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}},{"text":".   Diff Z: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocZ"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff Theta: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriV"}},{"text":".   Diff Phi: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriH"}}]
### END DEBUG