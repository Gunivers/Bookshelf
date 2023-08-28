# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#logical-or
# Dependencies:
# Note:
# - This function returns the or bitwise between the two numbers.
# - Example: -178 | 32165 = -17
# The result is the number composed by keeping all one in the two binary representations of these numbers.
# If an input is negative, it is replaced by its two's complement
# 6 | 10 <=> 0b0110 | 0b1010
#    0110
#  | 1010
#    ----
#    1110

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.or.0 bs.data = $bitwise.or.0 bs.in
scoreboard players operation #bitwise.or.1 bs.data = $bitwise.or.1 bs.in

# Two complement for each negative input
execute if score $bitwise.or.0 bs.in matches ..-1 run scoreboard players add #bitwise.or.0 bs.data 2147483647
execute if score $bitwise.or.0 bs.in matches ..-1 run scoreboard players add #bitwise.or.0 bs.data 1
execute if score $bitwise.or.1 bs.in matches ..-1 run scoreboard players add #bitwise.or.1 bs.data 2147483647
execute if score $bitwise.or.1 bs.in matches ..-1 run scoreboard players add #bitwise.or.1 bs.data 1

# Get the greater input most significant bit
execute if score #bitwise.or.0 bs.data < #bitwise.or.1 bs.data run scoreboard players operation $bitwise.msb.value bs.in = #bitwise.or.1 bs.data
execute if score #bitwise.or.0 bs.data >= #bitwise.or.1 bs.data run scoreboard players operation $bitwise.msb.value bs.in = #bitwise.or.0 bs.data
execute store result score #bitwise.or.msb bs.data run function #bs.bitwise:msb

scoreboard players set $bitwise.or bs.out 0
execute if score #bitwise.or.0 bs.data matches 0 if score #bitwise.or.1 bs.data matches 0 run return 0
function bs.bitwise:or/loop

# Two complement if an input is negative
execute if score $bitwise.or.0 bs.in matches ..-1 run scoreboard players add $bitwise.or bs.out 2147483647
execute if score $bitwise.or.0 bs.in matches ..-1 run return run scoreboard players add $bitwise.or bs.out 1
execute if score $bitwise.or.1 bs.in matches ..-1 run scoreboard players add $bitwise.or bs.out 2147483647
execute if score $bitwise.or.1 bs.in matches ..-1 run return run scoreboard players add $bitwise.or bs.out 1

return run scoreboard players get $bitwise.or bs.out
