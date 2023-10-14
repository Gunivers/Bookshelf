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
# - Formula: a | b = (a + b) - (a & b)
# The result is the number composed by keeping all one in the two binary representations of these numbers.

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.and.a bs.data = $bitwise.xor.a bs.in
execute store result score $bitwise.xor bs.out run scoreboard players operation #bitwise.and.b bs.data = $bitwise.xor.b bs.in
scoreboard players operation $bitwise.xor bs.out += $bitwise.xor.a bs.in
function bs.bitwise:and/compute
scoreboard players operation $bitwise.xor bs.out -= #bitwise.and bs.data
