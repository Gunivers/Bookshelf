scoreboard players operation @s glib.var1 *= 2 glib.const
scoreboard players add @s glib.res0 1
execute if score @s glib.var0 >= @s glib.var1 run function glib_child:default/math/bitwise/get_number_of_bits-loop