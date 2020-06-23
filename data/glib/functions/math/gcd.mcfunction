#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/gcd
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: Calculates the Greatest Common Divisor of 2 given numbers.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 -= @s glib.var2

scoreboard players operation @s[scores={glib.var3=1..}] glib.res = @s glib.var2
scoreboard players operation @s[scores={glib.var3=1..}] glib.var3 = @s glib.var

scoreboard players operation @s[scores={glib.var3=..-1}] glib.res = @s glib.var
scoreboard players operation @s[scores={glib.var3=..-1}] glib.var3 = @s glib.var2

tag @s[scores={glib.var3=0}] add PGCDfound

execute at @s[tag=!PGCDfound] run function glib:math/child/gcd-loop

tag @s remove PGCDfound
