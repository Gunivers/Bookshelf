# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.12)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-position
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute as B5-0-0-0-1 run function bs.position:get/position/ctx
$execute store result score @s bs.pos.y run data get storage bs:ctx _[1] $(scale)