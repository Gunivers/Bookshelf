#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:factorial
# Documentation: https://glib-core.readthedocs.io//math
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

scoreboard players operation @s bs.var1 = @s bs.var0
scoreboard players set @s bs.res0 1
function bs.math:common/factorial/child/loop

scoreboard players set @s[scores={bs.var0=0}] bs.res0 1
