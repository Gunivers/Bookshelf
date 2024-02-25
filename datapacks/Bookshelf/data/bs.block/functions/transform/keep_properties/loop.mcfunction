# copy iterable_properties options to ctx if the property name is valid
$execute store success score #success bs.data run data modify storage bs:ctx _[-1].options set from storage bs:out block.iterable_properties[{name:$(name)}].options
# if no option is selected, choose the first one
execute if score #success bs.data matches 1 unless data storage bs:ctx _[-1].options[{selected:1b}] run data modify storage bs:ctx _[-1].options[0].selected set value 1b
# update _ to indicate that this entry should be kept selected then copy ctx back to iterable_properties options
execute if score #success bs.data matches 1 run data modify storage bs:ctx _[-1].options[{selected:1b}]._ set value 1b
$execute if score #success bs.data matches 1 run data modify storage bs:out block.iterable_properties[{name:$(name)}].options set from storage bs:ctx _[-1].options

data remove storage bs:ctx _[-1]
function bs.block:transform/keep_properties/loop with storage bs:ctx _[-1]
