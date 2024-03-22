# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 01/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#rounded-division
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #math.divide.x bs.data run scoreboard players operation $math.divide bs.out = $math.divide.x bs.in
scoreboard players operation $math.divide bs.out /= $math.divide.y bs.in
execute store result score #math.divide.y bs.data run scoreboard players operation #math.divide.x bs.data %= $math.divide.y bs.in
scoreboard players operation #math.divide.y bs.data -= $math.divide.y bs.in
scoreboard players operation #math.divide.y bs.data *= -1 bs.const
execute if score #math.divide.y bs.data < #math.divide.x bs.data run scoreboard players add $math.divide bs.out 1
return run scoreboard players get $math.divide bs.out
