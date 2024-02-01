# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.12)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-position
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tp B5-0-0-0-1 ~ ~ ~
$execute store result score @s bs.pos.z run data get entity B5-0-0-0-1 Pos[2] $(scale)
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
