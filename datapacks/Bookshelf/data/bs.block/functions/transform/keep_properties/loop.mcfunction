# copy _ options to ctx if the property name is valid
$execute store success score #success bs.data run data modify storage bs:ctx _[-1].o set from storage bs:out block._[{n:$(name)}].o
# if no option is selected, choose the first one
execute if score #success bs.data matches 1 unless data storage bs:ctx _[-1].o[{c:1b}] run data modify storage bs:ctx _[-1].o[0].c set value 1b
# update _ to indicate that this entry should be kept selected then copy ctx back to _ options
execute if score #success bs.data matches 1 run data modify storage bs:ctx _[-1].o[{c:1b}]._ set value 1b
$execute if score #success bs.data matches 1 run data modify storage bs:out block._[{n:$(name)}].o set from storage bs:ctx _[-1].o

data remove storage bs:ctx _[-1]
function bs.block:transform/keep_properties/loop with storage bs:ctx _[-1]
