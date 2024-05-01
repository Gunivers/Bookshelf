$data remove storage bs:out block._[{name:$(name)}].options[].selected
$execute if data storage bs:out block._[{name:$(name)}].options[{value:$(value)}] run data modify storage bs:out block._[{name:$(name)}].options[{value:$(value)}].selected set value 1b
data remove storage bs:ctx _[-1]
function bs.block:transform/replace_properties/loop with storage bs:ctx _[-1]
