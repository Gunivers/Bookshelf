# NAME: Square Root
# PATH: gunivers-lib:math/child/sqrt_loop

# CHILD OF: gunivers-lib:math/sqrt

# CODE:
scoreboard players operation @s Var3 = @s Res
scoreboard players operation @s Var3 *= @s Res
scoreboard players operation @s Var2 /= 2 Constant

execute if score @s Var3 > @s Var1 run scoreboard players operation @s Res -= Var2
execute if score @s Var3 < @s Var1 run scoreboard players operation @s Res += Var2

execute if entity @s[scores={Var2=2..} unless score @s Var3 = @s Var1 function gunivers-lib:math/child/sqrt_loop