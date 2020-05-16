#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/exp
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - Var1 is the input of the function, multiplied by 100 to allow 2 digits (input 123 to calculate exp(1.23))
# - Res1 is multiplied by 1000 to allow 3 digits, but the function has a 3 digits accuracy only around 0
# - Var1 must be in interval ]-6 *100; 12 *100]
# - Thanks to this page for the formula used in this function https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap04/exp.html

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s Res1 1000
scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= 10 Constant
scoreboard players set @s Var2 1

function glib:math/child/exp-loop
