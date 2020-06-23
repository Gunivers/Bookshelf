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
#glib.var4: CenterX
#glib.var5: CenterZ 
#glib.var5: Radius
#__________________________________________________
# INIT
scoreboard objectives add glib.res dummy
scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy

scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var7 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s glib.var7 = @s glib.var5
scoreboard players operation @s glib.var7 *= 2 glib.const
scoreboard players operation @s glib.var7 += 1 glib.const

#Random
function glib:math/random
scoreboard players operation @s glib.res %= @s glib.var7 

scoreboard players set @s glib.var 0
execute if score @s glib.res > @s glib.var5 run scoreboard players operation @s glib.var -= @s glib.res
execute if score @s glib.res > @s glib.var5 run scoreboard players operation @s glib.var /= 2 glib.const
execute if score @s glib.res <= @s glib.var5 run scoreboard players operation @s glib.var = @s glib.res

scoreboard players operation @s glib.var += @s glib.var4

#Random
function glib:math/random
scoreboard players operation @s glib.res %= @s glib.var7 

scoreboard players set @s glib.var3 0
execute if score @s glib.res > @s glib.var5 run scoreboard players operation @s glib.var3 -= @s glib.res
execute if score @s glib.res > @s glib.var5 run scoreboard players operation @s glib.var3 /= 2 glib.const
execute if score @s glib.res <= @s glib.var5 run scoreboard players operation @s glib.var3 = @s glib.res

scoreboard players operation @s glib.var3 += @s glib.var5

execute store result score @s glib.var2 run data get entity @s Pos[1] 1

function glib:entity/location/set

