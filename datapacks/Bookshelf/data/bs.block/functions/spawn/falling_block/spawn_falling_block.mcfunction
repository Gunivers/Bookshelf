# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#spawn
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _ set from storage bs:in block.spawn_falling_block.nbt
data modify storage bs:ctx _.BlockState.Name set from storage bs:in block.spawn_falling_block.type
data modify storage bs:ctx _.BlockState.Properties set from storage bs:in block.spawn_falling_block.properties

function bs.block:spawn/falling_block/run with storage bs:ctx
