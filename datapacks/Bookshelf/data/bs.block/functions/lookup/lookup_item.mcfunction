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

$execute store success score #success bs.data run data modify storage bs:out block set from storage bs:const block[{item:"$(item)"}]
execute if score #success bs.data matches 0 run return 0
