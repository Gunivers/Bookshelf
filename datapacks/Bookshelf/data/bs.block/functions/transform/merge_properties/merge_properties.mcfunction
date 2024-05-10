# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-state
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value {in:$(properties)}
data modify storage bs:ctx _.out set from storage bs:out block._

# reset selected property values and attempt to reselect them based on the current location
data remove storage bs:out block._[].o[].c
execute store result storage bs:ctx y int 1 run data get storage bs:out block.group
execute unless data storage bs:ctx {y:0} run function bs.block:get/dispatch with storage bs:ctx

# update old properties with new ones if listed for merging
function bs.block:transform/merge_properties/loop with storage bs:ctx _.in[-1]
data modify storage bs:out block._ set from storage bs:ctx _.out
