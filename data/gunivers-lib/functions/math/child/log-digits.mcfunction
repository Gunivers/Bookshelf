# NAME: Log Digits
# PATH: gunivers-lib:math/child/log-digits
 
# CHILD OF: gunivers-lib:math/log

#CODE:
#____________________________________________________________________________________________________

# Counts the number of digits of var1
scoreboard players operation @s Var1 /= 10 Constant
scoreboard players add @s Var2 1

execute unless entity @s[scores={Var1=0}] run function gunivers-lib:math/child/log-digits