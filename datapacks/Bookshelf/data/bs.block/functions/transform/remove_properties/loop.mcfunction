$data remove storage bs:out block.iterable_properties[{name:$(name)}].options[{selected:1b}].selected
data remove storage bs:ctx _[-1]
function bs.block:transform/remove_properties/loop with storage bs:ctx _[-1]
