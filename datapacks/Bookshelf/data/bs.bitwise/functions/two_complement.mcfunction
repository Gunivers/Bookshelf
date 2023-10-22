# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#complement-to-2
# Dependencies:
# Note:
# - This function returns the two's complement of a number
# - Example: -1 -> 2147483647
#			-417 -> 2147483231
# Two's complement allows to represent a negative number like a positive number by remplacing this number by its complement.
# The two's complement is obtained by inverted all bits of the binary representation of the number, and add one to this.
# An other way to compute this: 2^n - abs(x) where n is the number of bit wanted to represent the binary number of the complement.
# In Minecraft, numbers are stored in a integer type (4 bytes), i.e. a 2^n of 2^31 - 1. In this case, we need to take 2^32 to include
# all numbers but 2^32 can't be store in an integer, so we modify a bit the operation for: (2^n - 1) - abs(x) + 1.

# CODE ------------------------------------------------------------------------

scoreboard players operation $bitwise.two_complement bs.out = $bitwise.two_complement.value bs.in
execute if score $bitwise.two_complement bs.out matches 1.. run return run scoreboard players get $bitwise.two_complement bs.out
scoreboard players add $bitwise.two_complement bs.out 2147483647
return run scoreboard players add $bitwise.two_complement bs.out 1
