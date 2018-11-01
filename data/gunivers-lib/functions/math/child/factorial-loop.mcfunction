# NAME: Factorial Loop
# PATH: gunivers-lib:math/child/factorial-loop
 
# CHILD OF: gunivers-lib:math/factorial
 
# CODE: 
scoreboard players operation @s Res *= @s Var2
scoreboard players remove @s Var2 1
execute if entity @s[scores={Var2=2..}] run function gunivers-lib:math/child/factorial-loop
