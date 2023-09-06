# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Ethanout, xiaodou123
# Contributors:

# Version: 3.1
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if score $math.isqrt.value bs.in matches 0..329475 run function bs.math:isqrt/group_1
execute if score $math.isqrt.value bs.in matches 329476..18688328 run function bs.math:isqrt/group_2
execute if score $math.isqrt.value bs.in matches 18688329..533609999 run function bs.math:isqrt/group_3
execute if score $math.isqrt.value bs.in matches 533610000.. run function bs.math:isqrt/group_4

scoreboard players operation #math.isqrt.temp_1 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.temp_1 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.temp_2 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.temp_2 bs.data
execute store result score #math.isqrt.temp_1 bs.data run scoreboard players operation $math.isqrt bs.out /= 2 bs.const

# Floor the result
scoreboard players operation #math.isqrt.temp_1 bs.data *= #math.isqrt.temp_1 bs.data
execute if score #math.isqrt.temp_1 bs.data > $math.isqrt.value bs.in run scoreboard players remove $math.isqrt bs.out 1
