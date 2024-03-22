# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#logical-operators
# Dependencies:
# Note:
# - This function returns the or bitwise between two numbers.
# - Example: -178 | 32165 = -17
# - Formula: a | b = (a + b) - (a & b)
# The result is the number composed by keeping all one in the two binary representations of these numbers.

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.and.a bs.data = $bitwise.or.a bs.in
execute store result score $bitwise.or bs.out run scoreboard players operation #bitwise.and.b bs.data = $bitwise.or.b bs.in
scoreboard players operation $bitwise.or bs.out += $bitwise.or.a bs.in
function bs.bitwise:and/compute
return run scoreboard players operation $bitwise.or bs.out -= #bitwise.and bs.data
