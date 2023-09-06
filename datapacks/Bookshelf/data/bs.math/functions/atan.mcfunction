# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: 18/01/2023 (1.19.2)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#arctangent
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $math.atan2.x bs.in = $math.atan.value bs.in
scoreboard players set $math.atan2.y bs.in 1000
function #bs.math:atan2
scoreboard players operation $math.atan bs.out = $math.atan2 bs.out
