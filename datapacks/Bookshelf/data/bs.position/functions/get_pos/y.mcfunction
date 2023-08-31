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

tp 72398515-296d-4e77-bd30-412f6f65d642 @s
$execute store result score @s bs.pos.y run data get entity 72398515-296d-4e77-bd30-412f6f65d642 Pos[1] $(scale)
tp 72398515-296d-4e77-bd30-412f6f65d642 0 0 0 0 0
