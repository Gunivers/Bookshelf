# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"east"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[in_wall=false] run data modify storage bs:out block.iterable_properties[{name:"in_wall"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[in_wall=true] run data modify storage bs:out block.iterable_properties[{name:"in_wall"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[open=false] run data modify storage bs:out block.iterable_properties[{name:"open"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[open=true] run data modify storage bs:out block.iterable_properties[{name:"open"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=false] run data modify storage bs:out block.iterable_properties[{name:"powered"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=true] run data modify storage bs:out block.iterable_properties[{name:"powered"}].options[{value:"true"}].selected set value 1b
