scoreboard players operation @s Var1 /= 10 Constant
scoreboard players add @s Var2 1

execute unless entity @s[scores={Var1=0}] run function glib:math/child/log-digits
