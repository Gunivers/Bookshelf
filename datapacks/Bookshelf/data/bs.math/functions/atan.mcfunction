# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: 18/01/2023 (1.19.2)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#inverse-trigonometry
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Pos[0] double 0.001 run scoreboard players get $math.atan.value bs.in
data modify entity B5-0-0-0-1 Pos[2] set value 1
execute positioned 0.0 0.0 0.0 facing entity B5-0-0-0-1 feet rotated ~ 0.0 run tp B5-0-0-0-1 0.0 0.0 0.0 ~ ~
return run execute store result score $math.atan bs.out run data get entity B5-0-0-0-1 Rotation[0] -100
