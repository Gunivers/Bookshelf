#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: bs.math:bitwise/not
# Documentation: https://glib-core.readthedocs.io//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the bit negation of the number

#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score): number to negate
# Output: @s bs.res0 (score): the negation of the number (~var0)

#__________________________________________________
# INIT




#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.var0 *= -1 bs.const
scoreboard players remove @s bs.var0 1
scoreboard players operation @s bs.res0 = @s bs.var0