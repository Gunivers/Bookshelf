#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: Return the next power 2 of the number

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s glib.res 1
execute if score @s glib.res < @s glib.var run function glib:math/child/get_next_pow2_loop
