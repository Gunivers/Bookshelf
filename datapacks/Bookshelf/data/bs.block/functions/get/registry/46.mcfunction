# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[type=single] run data modify storage bs:out block.iterable_properties[{name:"type"}].options[{value:"single"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=left] run data modify storage bs:out block.iterable_properties[{name:"type"}].options[{value:"left"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=right] run data modify storage bs:out block.iterable_properties[{name:"type"}].options[{value:"right"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"east"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
