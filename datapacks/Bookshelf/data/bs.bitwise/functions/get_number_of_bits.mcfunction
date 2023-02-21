
#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: bs.math:bitwise/get_number_of_bits
# Documentation: https://bookshelf.docs.gunivers.net//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the number of bits of the absolute value of the input
# - Example: a = 1451, (a)2 = 0b10110101011, |(a)2| = 11
# - Example: a = -1451, (abs(a))2 = 0b10110101011, |(abs(a))2| = 11
#			 

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

execute if score @s bs.in.0 matches ..-1 run scoreboard players operation @s bs.in.0 *= -1 bs.const
scoreboard players set @s bs.in.1 1
scoreboard players set @s bs.out.0 0
execute if score @s bs.in.0 >= @s bs.in.1 run function bs.bitwise:get_number_of_bits/child/loop