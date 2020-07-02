tp @s 0.5 0.0 0.5

scoreboard players operation glib.accuracy.entity.location.fast_set glib.var0 = @s glib.var0
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var1 = @s glib.var1
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var2 = @s glib.var2

scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var1 /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const

function glib:location/fast_set
execute at @s align xyz run tp @s ~ ~ ~

scoreboard players operation @s glib.var0 = glib.accuracy.entity.location.fast_set glib.var0
scoreboard players operation @s glib.var1 = glib.accuracy.entity.location.fast_set glib.var1
scoreboard players operation @s glib.var2 = glib.accuracy.entity.location.fast_set glib.var2

execute if score @s glib.var0 matches 1.. run function glib_child:accuracy/10-3/location/fast_set/x_p
execute if score @s glib.var0 matches ..-1 run function glib_child:accuracy/10-3/location/fast_set/x_n
execute if score @s glib.var1 matches 1.. run function glib_child:accuracy/10-3/location/fast_set/y_p
execute if score @s glib.var1 matches ..-1 run function glib_child:accuracy/10-3/location/fast_set/y_n
execute if score @s glib.var2 matches 1.. run function glib_child:accuracy/10-3/location/fast_set/z_p
execute if score @s glib.var2 matches ..-1 run function glib_child:accuracy/10-3/location/fast_set/z_n
