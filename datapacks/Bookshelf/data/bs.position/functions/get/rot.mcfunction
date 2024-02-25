# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof, theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-rotation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tp B5-0-0-0-1 -30000000 0 1600 ~ ~
$execute store result score @s bs.rot.h run data get entity B5-0-0-0-1 Rotation[0] $(scale)
$execute store result score @s bs.rot.v run data get entity B5-0-0-0-1 Rotation[1] $(scale)
