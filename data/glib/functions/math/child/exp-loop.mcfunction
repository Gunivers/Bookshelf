# TITLE: Exp Loop
# PATH: glib:math/child/exp-loop

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13
# CHILD OF: glib:math/exp

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s Res += @s Var3
scoreboard players add @s Var2 1
scoreboard players operation @s Var3 /= @s Var2
scoreboard players operation @s Var3 *= @s Var1
scoreboard players operation @s Var3 /= 100 Constant

execute unless entity @s[scores={Var3=0}] run function glib:math/child/exp-loop