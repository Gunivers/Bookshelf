# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 17/10/2023 (1.20.2)
# Last modification: 09/05/2024 (1.20.6)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#absolute-min
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $vector.abs_min bs.out = $vector.abs_min.0 bs.in
execute if predicate bs.vector:abs_min/check1 run scoreboard players operation $vector.abs_min bs.out = $vector.abs_min.1 bs.in
execute if predicate bs.vector:abs_min/check2 run scoreboard players operation $vector.abs_min bs.out = $vector.abs_min.2 bs.in
return run scoreboard players get $vector.abs_min bs.out
