$data modify storage bs:ctx _ set value $(properties)
function bs.block:transform/replace_properties/loop with storage bs:ctx _[-1]
