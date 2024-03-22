# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 17/10/2023 (1.20.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#min
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $vector.min bs.out = $vector.min.0 bs.in
execute if predicate bs.vector:min/check1 run scoreboard players operation $vector.min bs.out = $vector.min.1 bs.in
execute if predicate bs.vector:min/check2 run scoreboard players operation $vector.min bs.out = $vector.min.2 bs.in
return run scoreboard players get $vector.min bs.out
