# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#logical-operators
# Dependencies:
# Note:
# - This function returns the and bitwise between two numbers.
# - Example: -178 & 32165 = 32004
# The result is the number composed by keeping all one at the same position in the two binary representations of these numbers.

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.and.a bs.data = $bitwise.and.a bs.in
scoreboard players operation #bitwise.and.b bs.data = $bitwise.and.b bs.in
function bs.bitwise:and/compute
return run scoreboard players operation $bitwise.and bs.out = #bitwise.and bs.data
