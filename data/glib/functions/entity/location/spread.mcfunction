#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: A2va
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/spread
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity
# Note: Spread an entity based on CenterX, CenterZ and Radius scores

#__________________________________________________
# PARAMETERS
#Var4: CenterX
#Var5: CenterZ 
#Var6: Radius
#__________________________________________________
# INIT
scoreboard objectives add Res1 dummy
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s Var7 = @s Var6
scoreboard players operation @s Var7 *= 2 Constant
scoreboard players operation @s Var7 += 1 Constant

#Random
function glib:math/random
scoreboard players operation @s Res1 %= @s Var7 

scoreboard players set @s Var1 0
execute if score @s Res1 > @s Var6 run scoreboard players operation @s Var1 -= @s Res1
execute if score @s Res1 > @s Var6 run scoreboard players operation @s Var1 /= 2 Constant
execute if score @s Res1 <= @s Var6 run scoreboard players operation @s Var1 = @s Res1

scoreboard players operation @s Var1 += @s Var4

#Random
function glib:math/random
scoreboard players operation @s Res1 %= @s Var7 

scoreboard players set @s Var3 0
execute if score @s Res1 > @s Var6 run scoreboard players operation @s Var3 -= @s Res1
execute if score @s Res1 > @s Var6 run scoreboard players operation @s Var3 /= 2 Constant
execute if score @s Res1 <= @s Var6 run scoreboard players operation @s Var3 = @s Res1

scoreboard players operation @s Var3 += @s Var5

execute store result score @s Var2 run data get entity @s Pos[1] 1

function glib:entity/location/set

