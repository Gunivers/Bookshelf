#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/factorial
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: Warning, this function doesn't work if tmp1 > 12 (because the result is greater than 2^31, the limit value of the scoreboards)

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

scoreboard players operation @s Var2 = @s Var1
scoreboard players set @s Res1 1
function glib:math/child/factorial-loop
