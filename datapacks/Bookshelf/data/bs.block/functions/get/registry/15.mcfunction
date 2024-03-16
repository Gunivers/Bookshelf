# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[powered=false] run data modify storage bs:out block.iterable_properties[{name:"powered"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=true] run data modify storage bs:out block.iterable_properties[{name:"powered"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=north_south] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"north_south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=east_west] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"east_west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_east] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"ascending_east"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_west] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"ascending_west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_north] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"ascending_north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_south] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"ascending_south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b