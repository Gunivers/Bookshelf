#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: bs.math:bitwise/not
# Documentation: https://bookshelf.docs.gunivers.net//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the bit negation of the number

#__________________________________________________
# PARAMETERS

# Input: @s bs.in.0 (score): number to negate
# Output: @s bs.out.0 (score): the negation of the number (~var0)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation #bs.bitwise.x bs.data = @s bs.in.0

scoreboard players operation #bs.bitwise.x bs.data *= -1 bs.const
scoreboard players remove #bs.bitwise.x bs.data 1
scoreboard players operation @s bs.out.0 = #bs.bitwise.x bs.data