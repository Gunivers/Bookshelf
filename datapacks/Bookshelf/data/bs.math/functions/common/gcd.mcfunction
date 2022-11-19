#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:gcd
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note: Calculates the Greatest Common Divisor of 2 given numbers.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT







#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.var2 = @s bs.var0
scoreboard players operation @s bs.var2 -= @s bs.var1

scoreboard players operation @s[scores={bs.var2=1..}] bs.res0 = @s bs.var1
scoreboard players operation @s[scores={bs.var2=1..}] bs.var2 = @s bs.var0

scoreboard players operation @s[scores={bs.var2=..-1}] bs.res0 = @s bs.var0
scoreboard players operation @s[scores={bs.var2=..-1}] bs.var2 = @s bs.var1

tag @s[scores={bs.var2=0}] add PGCDfound

execute at @s[tag=!PGCDfound] run function bs.math:common/gcd/child/loop

tag @s remove PGCDfound
