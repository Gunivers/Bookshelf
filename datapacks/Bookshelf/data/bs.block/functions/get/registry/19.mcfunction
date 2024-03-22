# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[age=0] run data modify storage bs:out block.iterable_properties[{name:"age"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=1] run data modify storage bs:out block.iterable_properties[{name:"age"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[leaves=none] run data modify storage bs:out block.iterable_properties[{name:"leaves"}].options[{value:"none"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[leaves=small] run data modify storage bs:out block.iterable_properties[{name:"leaves"}].options[{value:"small"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[leaves=large] run data modify storage bs:out block.iterable_properties[{name:"leaves"}].options[{value:"large"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=0] run data modify storage bs:out block.iterable_properties[{name:"stage"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=1] run data modify storage bs:out block.iterable_properties[{name:"stage"}].options[{value:"1"}].selected set value 1b
