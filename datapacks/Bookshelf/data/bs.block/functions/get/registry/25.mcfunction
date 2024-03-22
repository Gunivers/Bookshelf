# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"east"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[tilt=none] run data modify storage bs:out block.iterable_properties[{name:"tilt"}].options[{value:"none"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[tilt=unstable] run data modify storage bs:out block.iterable_properties[{name:"tilt"}].options[{value:"unstable"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[tilt=partial] run data modify storage bs:out block.iterable_properties[{name:"tilt"}].options[{value:"partial"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[tilt=full] run data modify storage bs:out block.iterable_properties[{name:"tilt"}].options[{value:"full"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
