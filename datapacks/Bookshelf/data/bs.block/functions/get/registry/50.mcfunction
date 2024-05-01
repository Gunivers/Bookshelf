# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[age=0] run data modify storage bs:out block._[{name:"age"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=1] run data modify storage bs:out block._[{name:"age"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=2] run data modify storage bs:out block._[{name:"age"}].options[{value:"2"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{name:"facing"}].options[{value:"east"}].selected set value 1b
