$data modify storage bs:out block.data.type set from storage bs:block types[$(id)]
data modify storage bs:out block.type set from storage bs:out block.data.type.name
