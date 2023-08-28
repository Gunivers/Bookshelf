data modify storage bs:block tmp.type set from storage bs:out block.type.name
data modify storage bs:block tmp.nbt set from storage bs:out block.nbt
data modify storage bs:block tmp.state set from storage bs:out block.state.stringified
function bs.block:assemble/assemble_child with storage bs:block tmp
data remove storage bs:block tmp
