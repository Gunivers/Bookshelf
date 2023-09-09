# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#tan
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $math.sincos.angle bs.in = $math.tan.angle bs.in
function #bs.math:sincos
scoreboard players operation $math.tan bs.out = $math.sincos.sin bs.out
scoreboard players operation $math.tan bs.out *= 1000 bs.const
scoreboard players operation $math.tan bs.out /= $math.sincos.cos bs.out
