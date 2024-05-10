$data remove storage bs:out block._[{n:$(name)}].o[{c:1b}].c
data remove storage bs:ctx _[-1]
function bs.block:transform/remove_properties/loop with storage bs:ctx _[-1]
