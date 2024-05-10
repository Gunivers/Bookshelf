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

data remove storage bs:ctx _
$execute store success score #success bs.data run data modify storage bs:ctx _ set from storage bs:const block[{type:"$(type)"}]
execute if score #success bs.data matches 0 run return 0

execute store success score #success bs.data run data modify storage bs:out block.group set from storage bs:ctx _.group
execute if score #success bs.data matches 0 run data modify storage bs:out block.type set from storage bs:ctx _.type
execute if score #success bs.data matches 1 run data modify storage bs:out block set from storage bs:ctx _
