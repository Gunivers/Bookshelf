# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Majoras16
# Contributors:

# Version: 2.0
# Created: 27/04/2023 (1.19.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#cross-product
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.scaling bs.data $(scaling)

# out.0 = u.1 * v.2 - u.2 * v.1
scoreboard players operation $vector.cross_product.0 bs.out = $vector.cross_product.u.1 bs.in
scoreboard players operation $vector.cross_product.0 bs.out *= $vector.cross_product.v.2 bs.in
scoreboard players operation #vector.cross_product bs.data = $vector.cross_product.u.2 bs.in
scoreboard players operation #vector.cross_product bs.data *= $vector.cross_product.v.1 bs.in
scoreboard players operation $vector.cross_product.0 bs.out -= #vector.cross_product bs.data
scoreboard players operation $vector.cross_product.0 bs.out /= #vector.scaling bs.data

# out.1 = u.2 * v.0 - u.0 * v.2
scoreboard players operation $vector.cross_product.1 bs.out = $vector.cross_product.u.2 bs.in
scoreboard players operation $vector.cross_product.1 bs.out *= $vector.cross_product.v.0 bs.in
scoreboard players operation #vector.cross_product bs.data = $vector.cross_product.u.0 bs.in
scoreboard players operation #vector.cross_product bs.data *= $vector.cross_product.v.2 bs.in
scoreboard players operation $vector.cross_product.1 bs.out -= #vector.cross_product bs.data
scoreboard players operation $vector.cross_product.1 bs.out /= #vector.scaling bs.data

# out.2 = u.0 * v.1 - u.1 * v.0
scoreboard players operation $vector.cross_product.2 bs.out = $vector.cross_product.u.0 bs.in
scoreboard players operation $vector.cross_product.2 bs.out *= $vector.cross_product.v.1 bs.in
scoreboard players operation #vector.cross_product bs.data = $vector.cross_product.u.1 bs.in
scoreboard players operation #vector.cross_product bs.data *= $vector.cross_product.v.0 bs.in
scoreboard players operation $vector.cross_product.2 bs.out -= #vector.cross_product bs.data
scoreboard players operation $vector.cross_product.2 bs.out /= #vector.scaling bs.data
