# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 05/09/2023 (23w33a)
# Last modification:

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#trigonometry
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Rotation[0] float -0.01 run scoreboard players get $math.sincos.x bs.in
execute at B5-0-0-0-1 positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp B5-0-0-0-1 ^ ^ ^10.0
execute store result score $math.sincos.cos bs.out run data get entity B5-0-0-0-1 Pos[2] 100
execute store result score $math.sincos.sin bs.out run data get entity B5-0-0-0-1 Pos[0] 100
tp B5-0-0-0-1 -30000000 0 1600
