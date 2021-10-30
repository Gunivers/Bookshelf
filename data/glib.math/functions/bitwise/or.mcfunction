#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: glib.math:bitwise/or
# Documentation: https://glib-core.readthedocs.io//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the or bitwise between the two numbers.
# - Example: -178 | 32165 = 32004
# The result is the number composed by keeping all one in the two binary representations of these numbers.
# If an input is negative, it is replaced by its two's complement
# 6 | 10 <=> 0b0110 | 0b1010
#    0110
#  | 1010
#    ----
#	 1110
#__________________________________________________
# PARAMETERS

# Input: @s glib.var0 (score): first value
# Input: @s glib.var1 (score): second value
# Output: @s glib.res0 (score): the or bitwise between the two values (var0 | var1)

#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s glib.var0 matches ..-1 run tag @s add glib.math.bitwise.or.negative_operors
execute if score @s glib.var1 matches ..-1 run tag @s add glib.math.bitwise.or.negative_operors

scoreboard players operation @s glib.var5 = @s glib.var0
scoreboard players operation @s glib.var6 = @s glib.var1

execute if score @s glib.var0 matches ..-1 run function glib.math:bitwise/two_complement
execute if score @s glib.var5 matches ..-1 run scoreboard players operation @s glib.var0 = @s glib.res0

execute if score @s glib.var1 matches ..-1 run scoreboard players operation @s glib.var0 >< @s glib.var1
execute if score @s glib.var0 matches ..-1 run function glib.math:bitwise/two_complement
execute if score @s glib.var0 matches ..-1 run scoreboard players operation @s glib.var0 = @s glib.res0

execute if score @s glib.var1 < @s glib.var0 run scoreboard players operation @s glib.var0 >< @s glib.var1

scoreboard players set @s glib.res0 0
scoreboard players set @s glib.var2 1

function glib.math:bitwise/or/child/loop

execute if entity @s[tag=glib.math.bitwise.or.negative_operors] run scoreboard players operation @s glib.var0 = @s glib.res0
execute if entity @s[tag=glib.math.bitwise.or.negative_operors] run function glib.math:bitwise/two_complement
execute if entity @s[tag=glib.math.bitwise.or.negative_operors] run scoreboard players operation @s glib.res0 *= -1 glib.const
tag @s remove glib.math.bitwise.or.negative_operors

scoreboard players operation @s glib.var0 = @s glib.var5
scoreboard players operation @s glib.var1 = @s glib.var6