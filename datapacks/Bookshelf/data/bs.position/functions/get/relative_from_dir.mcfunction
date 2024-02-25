# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 20/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-relative
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp B5-0-0-0-1 ~ ~ ~ ~ ~
$execute store result score @s bs.pos.x run data get entity B5-0-0-0-1 Pos[0] $(scale)
$execute store result score @s bs.pos.y run data get entity B5-0-0-0-1 Pos[1] $(scale)
$execute store result score @s bs.pos.z run data get entity B5-0-0-0-1 Pos[2] $(scale)
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
