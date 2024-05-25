# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 11/05/2024 (1.20.6)
# Last modification: 11/05/2024 (1.20.6)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-type
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result storage bs:ctx x int 1 store success score #success bs.data run data get storage bs:ctx _[{type:"$(type)"}].id
execute if score #success bs.data matches 0 run return fail
execute store result storage bs:ctx y int 1 store success score #success bs.data run function bs.block:transform/replace_mapped_type/find_set with storage bs:out block
execute if score #success bs.data matches 0 run return fail
function bs.block:transform/replace_mapped_type/replace_intersect with storage bs:ctx
