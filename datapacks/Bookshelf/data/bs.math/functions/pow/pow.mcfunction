# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#power
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #math.pow.scale bs.data $(scale)

execute if score #math.pow.scale bs.data matches 1 run function bs.math:pow/simple
execute if score #math.pow.scale bs.data matches 2.. run function bs.math:pow/scaled

scoreboard players get $math.pow bs.out
