#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/exp
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:
# - glib.var0 is the input of the function, multiplied by 100 to allow 2 digits (input 123 to calculate exp(1.23))
# - glib.res0 is multiplied by 1000 to allow 3 digits, but the function has a 3 digits accuracy only around 0
# - glib.var0 must be in interval ]-6 *100; 12 *100]
# - Thanks to this page for the formula used in this function https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap04/exp.html

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.res0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s glib.res0 1000
scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 *= 10 glib.const
scoreboard players set @s glib.var1 1

function glib_child:math/exp-loop
