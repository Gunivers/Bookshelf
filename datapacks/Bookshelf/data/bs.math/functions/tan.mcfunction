# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#trigonometry
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Rotation[0] float -0.01 run scoreboard players get $math.tan.angle bs.in
execute at B5-0-0-0-1 positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp B5-0-0-0-1 ^ ^ ^10.0
execute store result score $math.tan bs.out run data get entity B5-0-0-0-1 Pos[0] 100
execute store result score #math.tan bs.data run data get entity B5-0-0-0-1 Pos[2] 100
scoreboard players operation $math.tan bs.out *= 1000 bs.const
return run scoreboard players operation $math.tan bs.out /= #math.tan bs.data
