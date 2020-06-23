scoreboard players operation @s glib.res *= 2 glib.const
execute if score @s glib.res < @s glib.var run function glib:math/child/get_next_pow2_loop
