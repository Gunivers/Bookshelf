# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-type
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store success score #success bs.data store result storage bs:ctx y int 1 run data get storage bs:const block.items."$(item)"
execute if score #success bs.data matches 1 run function bs.block:get/lookup with storage bs:ctx
return run scoreboard players get #success bs.data
