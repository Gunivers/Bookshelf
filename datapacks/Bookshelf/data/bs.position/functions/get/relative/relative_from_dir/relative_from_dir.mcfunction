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

execute as B5-0-0-0-1 run function bs.position:get/relative/relative_from_dir/ctx
$execute store result score @s bs.pos.x run data get storage bs:ctx _[0] $(scale)
$execute store result score @s bs.pos.y run data get storage bs:ctx _[1] $(scale)
$execute store result score @s bs.pos.z run data get storage bs:ctx _[2] $(scale)
