# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Ethanout, xiaodou123
# Contributors:

# Version: 4.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Dependencies:
# Note: 

# CODE ------------------------------------------------------------------------
execute if score @s bs.in.0 matches 0..329475 run function bs.math:isqrt/int_part_1
execute if score @s bs.in.0 matches 329476..18688328 run function bs.math:isqrt/int_part_2
execute if score @s bs.in.0 matches 18688329..533609999 run function bs.math:isqrt/int_part_3
execute if score @s bs.in.0 matches 533610000.. run function bs.math:isqrt/int_part_4

scoreboard players operation #math.sqrt.temp_1 bs.data /= @s bs.out.0
scoreboard players operation @s bs.out.0 += #math.sqrt.temp_1 bs.data
scoreboard players operation @s bs.out.0 /= 2 bs.const
scoreboard players operation #math.sqrt.temp_2 bs.data /= @s bs.out.0
scoreboard players operation @s bs.out.0 += #math.sqrt.temp_2 bs.data
execute store result score #math.sqrt.temp_1 bs.data run scoreboard players operation @s bs.out.0 /= 2 bs.const

# floor the result, can be removed if high accuracy is not needed
scoreboard players operation #math.sqrt.temp_1 bs.data *= #math.sqrt.temp_1 bs.data
execute if score #math.sqrt.temp_1 bs.data > @s bs.in.0 run scoreboard players remove @s bs.out.0 1