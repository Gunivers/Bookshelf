# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: 19/02/2023 (1.19.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#normalize
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.fast_normalize.scale bs.data $(scale)

scoreboard players operation $vector.fast_normalize.factor bs.out = $vector.fast_normalize.0 bs.in
execute if predicate bs.vector:fast_normalize/check1 run scoreboard players operation $vector.fast_normalize.factor bs.out = $vector.fast_normalize.1 bs.in
execute if predicate bs.vector:fast_normalize/check2 run scoreboard players operation $vector.fast_normalize.factor bs.out = $vector.fast_normalize.2 bs.in
execute if score $vector.fast_normalize.factor bs.out matches ..-1 run scoreboard players operation $vector.fast_normalize.factor bs.out *= -1 bs.const

scoreboard players operation $vector.fast_normalize.0 bs.out = $vector.fast_normalize.0 bs.in
scoreboard players operation $vector.fast_normalize.1 bs.out = $vector.fast_normalize.1 bs.in
scoreboard players operation $vector.fast_normalize.2 bs.out = $vector.fast_normalize.2 bs.in

scoreboard players operation $vector.fast_normalize.0 bs.out *= #vector.fast_normalize.scale bs.data
scoreboard players operation $vector.fast_normalize.1 bs.out *= #vector.fast_normalize.scale bs.data
scoreboard players operation $vector.fast_normalize.2 bs.out *= #vector.fast_normalize.scale bs.data

scoreboard players operation $vector.fast_normalize.0 bs.out /= $vector.fast_normalize.factor bs.out
scoreboard players operation $vector.fast_normalize.1 bs.out /= $vector.fast_normalize.factor bs.out
scoreboard players operation $vector.fast_normalize.2 bs.out /= $vector.fast_normalize.factor bs.out
