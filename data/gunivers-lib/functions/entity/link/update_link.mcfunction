# NAME: Update link
# PATH: gunivers-lib:entity/link/update link

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# NOTE:
# @s must be linked to an entity

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add Glib_R_LocX dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_R_LocZ dummy

scoreboard objectives add Glib_R_OriH dummy
scoreboard objectives add Glib_R_OriV dummy

scoreboard objectives add Glib_Link_Parent dummy


# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check


#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

execute store result score @s Glib_R_LocX run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s Glib_R_LocY run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s Glib_R_LocZ run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[2] 1000

scoreboard players operation @s Glib_R_LocX -= @s Var1
scoreboard players operation @s Glib_R_LocY -= @s Var2
scoreboard players operation @s Glib_R_LocZ -= @s Var3

#   Relative Orientation
execute store result score @s Var1 run data get entity @s Rotation[0] 1000
execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Glib_R_OriV run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000
execute store result score @s Glib_R_OriH run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

scoreboard players operation @s Glib_R_OriV -= @s Var1
scoreboard players operation @s Glib_R_OriH -= @s Var2