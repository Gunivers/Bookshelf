# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 05/09/2023 (23w33a)
# Last modification: 29/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#pow2
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------


execute store result storage bs:ctx y int 1 run scoreboard players get $math.pow2.exp bs.in
return run function bs.math:pow2/table
