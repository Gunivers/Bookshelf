# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#logical-operators
# Dependencies:
# Note: This function returns the bit negation of a number

# CODE ------------------------------------------------------------------------

scoreboard players operation $bitwise.not bs.out = $bitwise.not.value bs.in
scoreboard players operation $bitwise.not bs.out *= -1 bs.const

return run scoreboard players remove $bitwise.not bs.out 1
