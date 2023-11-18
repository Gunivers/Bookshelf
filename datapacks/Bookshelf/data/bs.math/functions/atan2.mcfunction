# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 05/09/2023 (23w33a)
# Last modification:

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#inverse-trigonometry
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Pos[0] double 0.001 run scoreboard players get $math.atan2.y bs.in
execute store result entity B5-0-0-0-1 Pos[2] double 0.001 run scoreboard players get $math.atan2.x bs.in
execute positioned 0.0 0.0 0.0 facing entity B5-0-0-0-1 feet rotated ~ 0.0 run tp B5-0-0-0-1 0.0 0.0 0.0 ~ ~
return run execute store result score $math.atan2 bs.out run data get entity B5-0-0-0-1 Rotation[0] -100
