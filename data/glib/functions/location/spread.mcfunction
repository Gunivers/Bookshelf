#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: A2va
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/spread
# Parallelizable: true
# Note: Spread an entity based on CenterX, CenterZ and Radius scores

#__________________________________________________
# PARAMETERS

#glib.var0: CenterX
#glib.var1: CenterZ
#glib.var2: Radius

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation location.spread.locX glib = @s glib.locX
scoreboard players operation location.spread.locY glib = @s glib.locY
scoreboard players operation location.spread.locZ glib = @s glib.locZ

scoreboard players operation @s glib.var6 = @s glib.var2
scoreboard players operation @s glib.var6 *= 2 glib.const
scoreboard players operation @s glib.var6 += 1 glib.const

#Random
function glib:math/random
scoreboard players operation @s glib.res0 %= @s glib.var6

scoreboard players set @s glib.locX 0
execute if score @s glib.res0 > @s glib.var2 run scoreboard players operation @s glib.locX -= @s glib.res0
execute if score @s glib.res0 > @s glib.var2 run scoreboard players operation @s glib.locX /= 2 glib.const
execute if score @s glib.res0 <= @s glib.var2 run scoreboard players operation @s glib.locX = @s glib.res0

scoreboard players operation @s glib.locX += @s glib.var0

#Random
function glib:math/random
scoreboard players operation @s glib.res0 %= @s glib.var6

scoreboard players set @s glib.locZ 0
execute if score @s glib.res0 > @s glib.var2 run scoreboard players operation @s glib.locZ -= @s glib.res0
execute if score @s glib.res0 > @s glib.var2 run scoreboard players operation @s glib.locZ /= 2 glib.const
execute if score @s glib.res0 <= @s glib.var2 run scoreboard players operation @s glib.locZ = @s glib.res0

scoreboard players operation @s glib.locZ += @s glib.var1

execute store result score @s glib.locY run data get entity @s Pos[1] 1

function glib:location/set

# Restore
scoreboard players operation @s glib.locX = location.spread.locX glib
scoreboard players operation @s glib.locY = location.spread.locY glib
scoreboard players operation @s glib.locZ = location.spread.locZ glib
