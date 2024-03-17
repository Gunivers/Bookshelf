# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#length
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.scaling bs.data $(scaling)

scoreboard players operation $vector.length_squared bs.out = $vector.length_squared.0 bs.in
scoreboard players operation $vector.length_squared bs.out *= $vector.length_squared.0 bs.in
scoreboard players operation #vector.length_squared bs.data = $vector.length_squared.1 bs.in
scoreboard players operation #vector.length_squared bs.data *= $vector.length_squared.1 bs.in
scoreboard players operation $vector.length_squared bs.out += #vector.length_squared bs.data
scoreboard players operation #vector.length_squared bs.data = $vector.length_squared.2 bs.in
scoreboard players operation #vector.length_squared bs.data *= $vector.length_squared.2 bs.in
scoreboard players operation $vector.length_squared bs.out += #vector.length_squared bs.data
return run scoreboard players operation $vector.length_squared bs.out /= #vector.scaling bs.data
