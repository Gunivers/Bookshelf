$data modify storage bs:data block.fill set value $(block)
data modify storage bs:data block.fill.type2 set from storage bs:data block.fill.replace.type
data modify storage bs:data block.fill.state2 set from storage bs:data block.fill.replace.state
data modify storage bs:data block.fill.nbt2 set from storage bs:data block.fill.replace.nbt

function bs.block:to/fill_with_replace/fill_with_replace_child with storage bs:data block.fill
