# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#arccosine
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $math.asin.value bs.in = $math.acos.value bs.in
scoreboard players operation $math.asin.value bs.in *= -1 bs.const
function #bs.math:asin
execute store result score $math.acos bs.out run scoreboard players add $math.asin bs.out 9000
