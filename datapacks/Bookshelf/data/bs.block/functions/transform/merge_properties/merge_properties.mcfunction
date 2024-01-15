$data modify storage bs:ctx _ set value {in:$(properties)}
data modify storage bs:ctx _.out set from storage bs:out block.iterable_properties

# reset selected property values and attempt to reselect them based on the current location
data remove storage bs:out block.iterable_properties[].options[].selected
execute store result storage bs:ctx y int 1 run data get storage bs:out block.group
execute unless data storage bs:ctx {y:0} run function bs.block:get/dispatch with storage bs:ctx

# update old properties with new ones if listed for merging
function bs.block:transform/merge_properties/loop with storage bs:ctx _.in[-1]
data modify storage bs:out block.iterable_properties set from storage bs:ctx _.out