data modify storage bs:data block.state set from storage bs:out block.state
function bs.block:get/all/from/block
data modify storage bs:out block.state set from storage bs:data block.state
function bs.block:to/set_block with storage bs:out block
