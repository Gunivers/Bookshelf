
#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: glib:math/bitwise/get_number_of_bits
# Documentation: https://glib-core.readthedocs.io//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the number of bits of the absolute value of the input
# - Example: a = 1451, (a)2 = 0b10110101011, |(a)2| = 11
# - Example: a = -1451, (abs(a))2 = 0b10110101011, |(abs(a))2| = 11
#			 

#__________________________________________________
# PARAMETERS

# Input: @s glib.var0 (score): number to negate
# Output: @s glib.res0 (score): the negation of the number (~var0)

#__________________________________________________
# INIT





#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s glib.var0 matches ..-1 run scoreboard players operation @s glib.var0 *= -1 glib.const
scoreboard players set @s glib.var1 1
scoreboard players set @s glib.res0 0
execute if score @s glib.var0 >= @s glib.var1 run function glib:math/bitwise/get_number_of_bits/child/loop