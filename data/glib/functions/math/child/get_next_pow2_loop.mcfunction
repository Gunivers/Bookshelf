scoreboard players operation @s Res1 *= 2 Constant
execute if score @s Res1 < @s Var1 run function glib:math/child/get_next_pow2_loop
