#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: A2va
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/spread
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity
# Parallelizable: <true/false/global>
# Note: Spread an entity based on CenterX, CenterZ and Radius scores

#__________________________________________________
# PARAMETERS
#glib.var3: CenterX
#glib.var4: CenterZ 
#glib.var4: Radius
#__________________________________________________
# INIT
scoreboard objectives add glib.res0 dummy
scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy

scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var6 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s glib.var6 = @s glib.var4
scoreboard players operation @s glib.var6 *= 2 glib.const
scoreboard players operation @s glib.var6 += 1 glib.const

#Random
function glib:math/random
scoreboard players operation @s glib.res0 %= @s glib.var6 

scoreboard players set @s glib.var0 0
execute if score @s glib.res0 > @s glib.var4 run scoreboard players operation @s glib.var0 -= @s glib.res0
execute if score @s glib.res0 > @s glib.var4 run scoreboard players operation @s glib.var0 /= 2 glib.const
execute if score @s glib.res0 <= @s glib.var4 run scoreboard players operation @s glib.var0 = @s glib.res0

scoreboard players operation @s glib.var0 += @s glib.var3

#Random
function glib:math/random
scoreboard players operation @s glib.res0 %= @s glib.var6 

scoreboard players set @s glib.var2 0
execute if score @s glib.res0 > @s glib.var4 run scoreboard players operation @s glib.var2 -= @s glib.res0
execute if score @s glib.res0 > @s glib.var4 run scoreboard players operation @s glib.var2 /= 2 glib.const
execute if score @s glib.res0 <= @s glib.var4 run scoreboard players operation @s glib.var2 = @s glib.res0

scoreboard players operation @s glib.var2 += @s glib.var4

execute store result score @s glib.var1 run data get entity @s Pos[1] 1

function glib_acc:10-3/location/set

