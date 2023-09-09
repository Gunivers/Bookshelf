# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 01/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#rounded-division
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #math.divide.mod bs.data run scoreboard players operation $math.divide bs.out = $math.divide.num bs.in
scoreboard players operation $math.divide bs.out /= $math.divide.den bs.in
execute store result score #math.divide.nmod bs.data run scoreboard players operation #math.divide.mod bs.data %= $math.divide.den bs.in
scoreboard players operation #math.divide.nmod bs.data -= $math.divide.den bs.in
scoreboard players operation #math.divide.nmod bs.data *= -1 bs.const
execute if score #math.divide.nmod bs.data < #math.divide.mod bs.data run scoreboard players add $math.divide bs.out 1
