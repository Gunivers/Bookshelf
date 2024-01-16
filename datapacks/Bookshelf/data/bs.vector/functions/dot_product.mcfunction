# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Majoras16
# Contributors:

# Version: 2.0
# Created: 27/04/2023 (1.19.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#dot-product
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.dot_product.scaling bs.data $(scaling)

scoreboard players operation $vector.dot_product bs.out = $vector.dot_product.u.0 bs.in
scoreboard players operation $vector.dot_product bs.out *= $vector.dot_product.v.0 bs.in
scoreboard players operation #vector.dot_product bs.data = $vector.dot_product.u.1 bs.in
scoreboard players operation #vector.dot_product bs.data *= $vector.dot_product.v.1 bs.in
scoreboard players operation $vector.dot_product bs.out += #vector.dot_product bs.data
scoreboard players operation #vector.dot_product bs.data = $vector.dot_product.u.2 bs.in
scoreboard players operation #vector.dot_product bs.data *= $vector.dot_product.v.2 bs.in
scoreboard players operation $vector.dot_product bs.out += #vector.dot_product bs.data
return run scoreboard players operation $vector.dot_product bs.out /= #vector.dot_product.scaling bs.data
