#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: bs.math:bitwise/and
# Documentation: https://glib-core.readthedocs.io//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the and bitwise between the two numbers.
# - Example: -178 & 32165 = 32004
# The result is the number composed by keeping all one at the same position in the two binary representations of these numbers.
# If an input is negative, it is replaced by its two's complement
# 6 & 10 <=> 0b0110 & 0b1010
#    0110
#  & 1010
#    ――――
#	 0010
#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score): first value
# Input: @s bs.var1 (score): second value
# Output: @s bs.res0 (score): the and bitwise between the two values (var0 & var1)

#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s bs.var0 matches ..-1 if score @s bs.var1 matches ..-1 run tag @s add bs.math.bitwise.and.negative_operands

scoreboard players operation @s bs.var5 = @s bs.var0
scoreboard players operation @s bs.var6 = @s bs.var1

execute if score @s bs.var0 matches ..-1 run function bs.math:bitwise/two_complement
execute if score @s bs.var5 matches ..-1 run scoreboard players operation @s bs.var0 = @s bs.res0

execute if score @s bs.var1 matches ..-1 run scoreboard players operation @s bs.var0 >< @s bs.var1
execute if score @s bs.var0 matches ..-1 run function bs.math:bitwise/two_complement
execute if score @s bs.var0 matches ..-1 run scoreboard players operation @s bs.var0 = @s bs.res0

execute if score @s bs.var1 > @s bs.var0 run scoreboard players operation @s bs.var0 >< @s bs.var1

scoreboard players set @s bs.res0 0
scoreboard players set @s bs.var2 1

function bs.math:bitwise/and/child/loop

execute if entity @s[tag=bs.math.bitwise.and.negative_operands] run scoreboard players operation @s bs.var0 = @s bs.res0
execute if entity @s[tag=bs.math.bitwise.and.negative_operands] run function bs.math:bitwise/two_complement
execute if entity @s[tag=bs.math.bitwise.and.negative_operands] run scoreboard players operation @s bs.res0 *= -1 bs.const
tag @s remove bs.math.bitwise.and.negative_operands

scoreboard players operation @s bs.var0 = @s bs.var5
scoreboard players operation @s bs.var1 = @s bs.var6