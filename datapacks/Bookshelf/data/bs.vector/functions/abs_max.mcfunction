# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: 23/02/2023 (1.19.2)
# Last modification: 09/05/2024 (1.20.6)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#absolute-max
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $vector.abs_max bs.out = $vector.abs_max.0 bs.in
execute if predicate bs.vector:abs_max/check1 run scoreboard players operation $vector.abs_max bs.out = $vector.abs_max.1 bs.in
execute if predicate bs.vector:abs_max/check2 run scoreboard players operation $vector.abs_max bs.out = $vector.abs_max.2 bs.in
return run scoreboard players get $vector.abs_max bs.out
