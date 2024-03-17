# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[type=bottom] run data modify storage bs:out block.iterable_properties[{name:"type"}].options[{value:"bottom"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=double] run data modify storage bs:out block.iterable_properties[{name:"type"}].options[{value:"double"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=top] run data modify storage bs:out block.iterable_properties[{name:"type"}].options[{value:"top"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
