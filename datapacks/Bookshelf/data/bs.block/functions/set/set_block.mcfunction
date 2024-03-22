# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#set
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute unless data storage bs:in block.set_block.mode run data modify storage bs:in block.set_block.mode set value "replace"
return run function bs.block:set/run with storage bs:in block.set_block
