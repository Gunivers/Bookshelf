$data modify storage bs:data block.fill_block merge value {x1:$(x1),y1:$(y1),z1:$(z1),x2:$(x2),y2:$(y2),z2:$(z2)}

execute unless data storage bs:data block.fill_block.mode run data modify storage bs:data block.fill_block.mode set value "replace"
execute unless data storage bs:data block.fill_block.type run data modify storage bs:data block.fill_block merge from storage bs:out block

execute if data storage bs:data block.fill_block.filter run function bs.block:fill_block/run_with_filter with storage bs:data block.fill_block
execute unless data storage bs:data block.fill_block.filter run function bs.block:fill_block/run_with_mode with storage bs:data block.fill_block
data remove storage bs:data block.fill_block
