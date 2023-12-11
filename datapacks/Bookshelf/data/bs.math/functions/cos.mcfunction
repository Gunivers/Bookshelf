# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#trigonometry
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# Normalize angle
scoreboard players operation $math.cos bs.out = $math.cos.angle bs.in
execute store result score #math.cos.angle bs.data run scoreboard players operation $math.cos bs.out %= 36000 bs.const
execute if score #math.cos.angle bs.data matches 9000..27000 run scoreboard players remove $math.cos bs.out 18000
execute if score #math.cos.angle bs.data matches 27001.. run scoreboard players remove $math.cos bs.out 36000

# Compute Bhāskara cosine approximation
execute store result score #math.cos.denominator bs.data run scoreboard players operation $math.cos bs.out *= $math.cos bs.out
scoreboard players operation $math.cos bs.out *= -4 bs.const
scoreboard players add $math.cos bs.out 324000000
scoreboard players add #math.cos.denominator bs.data 324000000
scoreboard players operation #math.cos.denominator bs.data /= 1000 bs.const
execute if score #math.cos.angle bs.data matches 9000..27000 run scoreboard players operation #math.cos.denominator bs.data *= -1 bs.const
return run scoreboard players operation $math.cos bs.out /= #math.cos.denominator bs.data
