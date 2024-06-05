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

execute unless data storage bs:in block.set_type.mode run data modify storage bs:in block.set_type.mode set value "replace"
function bs.block:get/get_block
function #bs.block:replace_type with storage bs:in block.set_type
data modify storage bs:out block.mode set from storage bs:in block.set_type.mode
return run function bs.block:set/run with storage bs:out block
