# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

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
scoreboard players operation $math.sin bs.out = $math.sin.x bs.in
execute store result score #math.sin.x bs.data run scoreboard players operation $math.sin bs.out %= 36000 bs.const
execute if score #math.sin.x bs.data matches ..18000 run scoreboard players remove $math.sin bs.out 9000
execute if score #math.sin.x bs.data matches 18001.. run scoreboard players remove $math.sin bs.out 27000

# Compute Bhāskara sinine approximation
execute store result score #math.sin.y bs.data run scoreboard players operation $math.sin bs.out *= $math.sin bs.out
scoreboard players operation $math.sin bs.out *= -4 bs.const
scoreboard players add $math.sin bs.out 324000000
scoreboard players add #math.sin.y bs.data 324000000
scoreboard players operation #math.sin.y bs.data /= 1000 bs.const
execute if score #math.sin.x bs.data matches 18000.. run scoreboard players operation #math.sin.y bs.data *= -1 bs.const
return run scoreboard players operation $math.sin bs.out /= #math.sin.y bs.data
