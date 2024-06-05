# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof, theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-rotation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600 ~ ~
$execute store result score @s bs.rot.h run data get entity B5-0-0-0-1 Rotation[0] $(scale)
$execute store result score @s bs.rot.v run data get entity B5-0-0-0-1 Rotation[1] $(scale)
