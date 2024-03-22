# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Leirof
# Contributors: Aksiome

# Version: 1.0
# Created: ??/??/2018 (1.13)
# Last modification: 03/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#greatest-common-denominator
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $math.gcd bs.out = $math.gcd.a bs.in
scoreboard players operation #math.gcd.b bs.data = $math.gcd.b bs.in
function bs.math:gcd/loop
return run scoreboard players get $math.gcd bs.out
