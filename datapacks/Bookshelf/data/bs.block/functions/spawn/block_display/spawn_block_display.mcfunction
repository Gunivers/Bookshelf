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
data modify storage bs:ctx _ set from storage bs:in block.spawn_block_display.extra_nbt
data modify storage bs:ctx _.block_state.Name set from storage bs:in block.spawn_block_display.type
data modify storage bs:ctx _.block_state.Properties set from storage bs:in block.spawn_block_display.properties

function bs.block:spawn/block_display/run with storage bs:ctx
