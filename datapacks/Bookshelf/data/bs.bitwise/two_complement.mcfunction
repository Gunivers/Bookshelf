#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: bs.math:bitwise/two_complement
# Documentation: https://bookshelf.docs.gunivers.net//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the two's complement of a number
# - Example: -1 -> 2147483647
#			417 -> 2147483231
# Two's complement allows to represent a negative number like a positive number by remplacing this number by its complement.
# The two's complement is obtained by inverted all bits of the binary representation of the number, and add one to this.
# An other way to compute this: 2^n - abs(x) where n is the number of bit wanted to represent the binary number of the complement.
# In Minecraft, numbers are stored in a integer type (4 bytes), i.e. a 2^n of 2^31 - 1. In this case, we need to take 2^32 to include 
# all numbers but 2^32 can't be store in an integer, so we modify a bit the operation for: (2^n - 1) - abs(x) + 1.

#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score): number to two's complete
# Output: @s bs.res0 (score): the two's complete of a number

#__________________________________________________
# INIT




#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s bs.var0 matches ..-1 run tag @s add bs.bitwise.two_complement.negative
execute if entity @s[tag=bs.bitwise.two_complement.negative] run scoreboard players operation @s bs.var0 *= -1 bs.const
scoreboard players operation @s bs.res0 = Max bs.const
scoreboard players operation @s bs.res0 -= @s bs.var0
scoreboard players add @s bs.res0 1
execute if entity @s[tag=bs.bitwise.two_complement.negative] run scoreboard players operation @s bs.var0 *= -1 bs.const
tag @s remove bs.bitwise.two_complement.negative
