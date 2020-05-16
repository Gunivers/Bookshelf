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

scoreboard objectives add Var1 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s Res1 1
execute if score @s Res1 < @s Var1 run function glib:math/child/get_next_pow2_loop
