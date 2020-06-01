#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: A2va
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/spreadplayers
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity
# Note: Return 1 if the entity is in a cave, 0 else.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT
scoreboard objectives add Res1 dummy
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add Radius dummy
scoreboard objectives add Radius2 dummy
scoreboard objectives add CenterX dummy
scoreboard objectives add CenterZ dummy
#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s Radius2 = @s Radius
scoreboard players operation @s Radius2 *= 2 Constant
scoreboard players operation @s Radius2 += 1 Constant

#Random
function glib:math/random
scoreboard players operation @s Res1 %= @s Radius2 

scoreboard players set @s Var1 0
execute if score @s Res1 > @s Radius run scoreboard players operation @s Var1 -= @s Res1
execute if score @s Res1 > @s Radius run scoreboard players operation @s Var1 /= 2 Constant
execute if score @s Res1 <= @s Radius run scoreboard players operation @s Var1 = @s Res1

scoreboard players operation @s Var1 += @s CenterX

#Random
function glib:math/random
scoreboard players operation @s Res1 %= @s Radius2 

scoreboard players set @s Var3 0
execute if score @s Res1 > @s Radius run scoreboard players operation @s Var3 -= @s Res1
execute if score @s Res1 > @s Radius run scoreboard players operation @s Var3 /= 2 Constant
execute if score @s Res1 <= @s Radius run scoreboard players operation @s Var3 = @s Res1

scoreboard players operation @s Var3 += @s CenterZ

execute store result score @s Var2 run data get entity @s Pos[1] 1

function glib:entity/location/set

