# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: 23/02/2023 (1.19.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#max
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $vector.max bs.out = $vector.max.0 bs.in
execute if predicate bs.vector:max/check1 run scoreboard players operation $vector.max bs.out = $vector.max.1 bs.in
execute if predicate bs.vector:max/check2 run scoreboard players operation $vector.max bs.out = $vector.max.2 bs.in
return run scoreboard players get $vector.max bs.out
