# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: KubbyDev
# Contributors: Aksiome

# Version: 1.0
# Created: ??/??/2018 (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#factorial
# Dependencies:
# Note: Warning, this function does not work if the input is greater than 12 (because the result is greater than 2^31, the limit value of scoreboards)

# CODE ------------------------------------------------------------------------

execute if score $math.factorial.n bs.in matches 0 run return run scoreboard players set $math.factorial bs.out 1
execute if score $math.factorial.n bs.in matches 1.. store result score #math.factorial.i bs.data run scoreboard players operation $math.factorial bs.out = $math.factorial.n bs.in
execute if score $math.factorial.n bs.in matches 3.. run function bs.math:factorial/loop

return run scoreboard players get $math.factorial bs.out
