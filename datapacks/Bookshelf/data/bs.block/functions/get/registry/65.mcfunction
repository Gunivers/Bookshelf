# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[face=wall] run data modify storage bs:out block._[{name:"face"}].options[{value:"wall"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[face=ceiling] run data modify storage bs:out block._[{name:"face"}].options[{value:"ceiling"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[face=floor] run data modify storage bs:out block._[{name:"face"}].options[{value:"floor"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{name:"facing"}].options[{value:"east"}].selected set value 1b
