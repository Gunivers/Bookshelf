#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/factorial
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note: Warning, this function doesn't work if tmp1 > 12 (because the result is greater than 2^31, the limit value of the scoreboards)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var1 = @s glib.var0
scoreboard players set @s glib.res0 1
function glib:math/common/factorial/child/loop

scoreboard players set @s[scores={glib.var0=0}] glib.res0 1
