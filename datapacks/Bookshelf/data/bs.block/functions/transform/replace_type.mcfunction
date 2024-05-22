# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-type
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx _ set from storage bs:out block

$execute store success score #success bs.data store result storage bs:ctx y int 1 run data get storage bs:const block.types."$(type)"
execute if score #success bs.data matches 1 run function bs.block:get/lookup with storage bs:ctx
execute store success score #success bs.data run data modify storage bs:ctx _.group set from storage bs:out block.group
execute if score #success bs.data matches 0 run data modify storage bs:out block.nbt set from storage bs:ctx _.nbt
execute if score #success bs.data matches 0 run data modify storage bs:out block._ set from storage bs:ctx _._
