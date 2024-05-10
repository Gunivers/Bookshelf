$data remove storage bs:out block._[{n:$(name)}].o[].c
$execute if data storage bs:out block._[{n:$(name)}].o[{v:$(value)}] run data modify storage bs:out block._[{n:$(name)}].o[{v:$(value)}].c set value 1b
data remove storage bs:ctx _[-1]
function bs.block:transform/replace_properties/loop with storage bs:ctx _[-1]
