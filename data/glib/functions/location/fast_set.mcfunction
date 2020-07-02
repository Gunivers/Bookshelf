tp @s 0.5 0.0 0.5

scoreboard players operation glib.entity.location.fast_set glib.var0 = @s glib.var0
scoreboard players operation glib.entity.location.fast_set glib.var1 = @s glib.var1
scoreboard players operation glib.entity.location.fast_set glib.var2 = @s glib.var2

execute if score @s glib.var0 matches 1.. run function glib_child:location/fast_set/x_p
execute if score @s glib.var0 matches ..-1 run function glib_child:location/fast_set/x_n
execute if score @s glib.var1 matches 1.. run function glib_child:location/fast_set/y_p
execute if score @s glib.var1 matches ..-1 run function glib_child:location/fast_set/y_n
execute if score @s glib.var2 matches 1.. run function glib_child:location/fast_set/z_p
execute if score @s glib.var2 matches ..-1 run function glib_child:location/fast_set/z_n
