scoreboard players operation @s Res *= 2 Constant
execute if score @s Res < @s Var1 run function glib:math/child/get_next_pow2_loop
