$data modify storage bs:data block.fill_block.filter set value $(filter)

data modify storage bs:data block.fill_block.type2 set from storage bs:data block.fill_block.filter.type
data modify storage bs:data block.fill_block.state2 set from storage bs:data block.fill_block.filter.state
data modify storage bs:data block.fill_block.nbt2 set from storage bs:data block.fill_block.filter.nbt
