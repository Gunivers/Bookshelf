#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/set
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

# Input: @s glib.locX (score)
# Input: @s glib.locY (score)
# Input: @s glib.locZ (score)

#__________________________________________________
# INIT

scoreboard objectives add glib.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add glib.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add glib.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tp @s 0.5 0.0 0.5

scoreboard players operation glib.entity.location.fast_set glib.var0 = @s glib.locX
scoreboard players operation glib.entity.location.fast_set glib.var1 = @s glib.locY
scoreboard players operation glib.entity.location.fast_set glib.var2 = @s glib.locZ

execute if score @s glib.locX matches 1.. run function glib_child:location/fast_set/x_p
execute if score @s glib.locX matches ..-1 run function glib_child:location/fast_set/x_n
execute if score @s glib.locY matches 1.. run function glib_child:location/fast_set/y_p
execute if score @s glib.locY matches ..-1 run function glib_child:location/fast_set/y_n
execute if score @s glib.locZ matches 1.. run function glib_child:location/fast_set/z_p
execute if score @s glib.locZ matches ..-1 run function glib_child:location/fast_set/z_n
