scoreboard players operation @s Res1 *= @s Var2
scoreboard players remove @s Var2 1
execute if entity @s[scores={Var2=2..}] run function glib:math/child/factorial-loop
