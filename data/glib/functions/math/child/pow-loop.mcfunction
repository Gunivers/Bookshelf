# NAME: Pow-Loop
# PATH: glib:math/child/pow-loop

# CHILD OF: glib:math/pow

# CODE: 


scoreboard players operation @s Res *= @s Var1
scoreboard players remove @s Var3 1

execute if entity @s[scores={Var3=2..}] run function glib:math/child/pow-loop
