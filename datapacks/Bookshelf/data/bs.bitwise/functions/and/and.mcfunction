# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#logical-and
# Dependencies:
# Note:
# - This function returns the and bitwise between the two numbers.
# - Example: -178 & 32165 = 32004
# The result is the number composed by keeping all one at the same position in the two binary representations of these numbers.
# If an input is negative, it is replaced by its two's complement
# 6 & 10 <=> 0b0110 & 0b1010
#    0110
#  & 1010
#    ――――
#	   0010

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.and.0 bs.data = $bitwise.and.0 bs.in
scoreboard players operation #bitwise.and.1 bs.data = $bitwise.and.1 bs.in

# Two complement for each negative input
execute if score $bitwise.and.0 bs.in matches ..-1 run scoreboard players add #bitwise.and.0 bs.data 2147483647
execute if score $bitwise.and.0 bs.in matches ..-1 run scoreboard players add #bitwise.and.0 bs.data 1
execute if score $bitwise.and.1 bs.in matches ..-1 run scoreboard players add #bitwise.and.1 bs.data 2147483647
execute if score $bitwise.and.1 bs.in matches ..-1 run scoreboard players add #bitwise.and.1 bs.data 1

# Get the greater input most significant bit
execute if score #bitwise.and.0 bs.data < #bitwise.and.1 bs.data run scoreboard players operation $bitwise.msb.value bs.in = #bitwise.and.1 bs.data
execute if score #bitwise.and.0 bs.data >= #bitwise.and.1 bs.data run scoreboard players operation $bitwise.msb.value bs.in = #bitwise.and.0 bs.data
execute store result score #bitwise.and.msb bs.data run function #bs.bitwise:msb

scoreboard players set $bitwise.and bs.out 0
execute if score #bitwise.and.0 bs.data matches 1.. if score #bitwise.and.1 bs.data matches 1.. run function bs.bitwise:and/loop

# Two complement if both inputs are negative
execute if score $bitwise.and.0 bs.in matches ..-1 if score $bitwise.and.1 bs.in matches ..-1 run scoreboard players add $bitwise.and bs.out 2147483647
execute if score $bitwise.and.0 bs.in matches ..-1 if score $bitwise.and.1 bs.in matches ..-1 run scoreboard players add $bitwise.and bs.out 1

return run scoreboard players get $bitwise.and bs.out
