scoreboard players operation @s Res1 += @s Var3
scoreboard players add @s Var2 1
scoreboard players operation @s Var3 /= @s Var2
scoreboard players operation @s Var3 *= @s Var1
scoreboard players operation @s Var3 /= 100 Constant

execute unless entity @s[scores={Var3=0}] run function glib:math/child/exp-loop
