data modify storage bs:data block.type set from storage bs:out block.type
function bs.block:get/all/from/block
data modify storage bs:out block.type set from storage bs:data block.type
function bs.block:to/set_block with storage bs:out block
