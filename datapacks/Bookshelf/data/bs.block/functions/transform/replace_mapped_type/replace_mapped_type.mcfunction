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

$data modify storage bs:ctx _ set value $(type_set)
$execute store result storage bs:ctx x int 1 run data get storage bs:ctx _[{type:"$(type)"}].category
execute store result storage bs:ctx y int 1 run function bs.block:transform/replace_mapped_type/get_index with storage bs:out block
function bs.block:transform/replace_mapped_type/replace_type with storage bs:ctx
