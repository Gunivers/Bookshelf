# copy _ options to ctx if the property name is valid
$execute store success score #success bs.data run data modify storage bs:ctx _[-1].options set from storage bs:out block._[{name:$(name)}].options

# compute the new index after shifting by the desired value
execute store result score #block.shift_properties bs.data run data get storage bs:ctx _[-1].options[{selected:1b}].index
execute store result score #block.shift_properties.len bs.data if data storage bs:ctx _[-1].options[]
execute store result score #block.shift_properties.by bs.data run data get storage bs:ctx _[-1].by
execute if score #block.shift_properties.by bs.data matches 0 run scoreboard players set #block.shift_properties.by bs.data 1
scoreboard players operation #block.shift_properties bs.data += #block.shift_properties.by bs.data
execute store result storage bs:ctx y short 1 run scoreboard players operation #block.shift_properties bs.data %= #block.shift_properties.len bs.data

# select the _ option at the specified index then copy ctx back to _ options
execute if score #success bs.data matches 1 run function bs.block:transform/shift_properties/select with storage bs:ctx
$execute if score #success bs.data matches 1 run data modify storage bs:out block._[{name:$(name)}].options set from storage bs:ctx _[-1].options

data remove storage bs:ctx _[-1]
function bs.block:transform/shift_properties/loop with storage bs:ctx _[-1]
