# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#logical-xor
# Dependencies:
# Note:
# - This function returns the exclusive or bitwise between the two numbers.
# - Example: -178 ^ 32165 = -32021
# The result is the number composed by putting one at all bits where the value in the two binary representations of these numbers is different.
# If an input is negative, it is replaced by its two's complement
# 6 ^ 10 <=> 0b0110 ^ 0b1010
#    0110
#  ^ 1010
#    ----
#	 1100

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.xor.0 bs.data = $bitwise.xor.0 bs.in
scoreboard players operation #bitwise.xor.1 bs.data = $bitwise.xor.1 bs.in

# Two complement for each negative input
execute if score $bitwise.xor.0 bs.in matches ..-1 run scoreboard players add #bitwise.xor.0 bs.data 2147483647
execute if score $bitwise.xor.0 bs.in matches ..-1 run scoreboard players add #bitwise.xor.0 bs.data 1
execute if score $bitwise.xor.1 bs.in matches ..-1 run scoreboard players add #bitwise.xor.1 bs.data 2147483647
execute if score $bitwise.xor.1 bs.in matches ..-1 run scoreboard players add #bitwise.xor.1 bs.data 1

# Get the greater input most significant bit
execute if score #bitwise.xor.0 bs.data < #bitwise.xor.1 bs.data run scoreboard players operation $bitwise.msb.value bs.in = #bitwise.xor.1 bs.data
execute if score #bitwise.xor.0 bs.data >= #bitwise.xor.1 bs.data run scoreboard players operation $bitwise.msb.value bs.in = #bitwise.xor.0 bs.data
function #bs.bitwise:msb
scoreboard players operation #bitwise.xor.msb bs.data = $bitwise.msb bs.out

scoreboard players set $bitwise.xor bs.out 0
execute if score #bitwise.xor.0 bs.data matches 0 if score #bitwise.xor.1 bs.data matches 0 run return 0
function bs.bitwise:xor/loop

# Two complement if an input is negative
execute if score $bitwise.xor.0 bs.in matches ..-1 run scoreboard players add $bitwise.xor bs.out 2147483647
execute if score $bitwise.xor.0 bs.in matches ..-1 run scoreboard players add $bitwise.xor bs.out 1
execute unless score $bitwise.xor.0 bs.in matches ..-1 if score $bitwise.xor.1 bs.in matches ..-1 run scoreboard players add $bitwise.xor bs.out 2147483647
execute unless score $bitwise.xor.0 bs.in matches ..-1 if score $bitwise.xor.1 bs.in matches ..-1 run scoreboard players add $bitwise.xor bs.out 1
