$data modify storage bs:ctx _ set value $(properties)
function bs.block:transform/remove_properties/loop with storage bs:ctx _[-1]
