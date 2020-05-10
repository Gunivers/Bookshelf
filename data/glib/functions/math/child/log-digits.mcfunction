# NAME: Log Digits
# PATH: glib:math/child/log-digits
 
# CHILD OF: glib:math/log

#CODE:
#____________________________________________________________________________________________________

# Counts the number of digits of var1
scoreboard players operation @s Var1 /= 10 Constant
scoreboard players add @s Var2 1

execute unless entity @s[scores={Var1=0}] run function glib:math/child/log-digits