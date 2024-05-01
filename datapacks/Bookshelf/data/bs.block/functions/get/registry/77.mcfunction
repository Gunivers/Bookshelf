# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[age=0] run data modify storage bs:out block._[{name:"age"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=1] run data modify storage bs:out block._[{name:"age"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=2] run data modify storage bs:out block._[{name:"age"}].options[{value:"2"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=3] run data modify storage bs:out block._[{name:"age"}].options[{value:"3"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=4] run data modify storage bs:out block._[{name:"age"}].options[{value:"4"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hanging=false] run data modify storage bs:out block._[{name:"hanging"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hanging=true] run data modify storage bs:out block._[{name:"hanging"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=0] run data modify storage bs:out block._[{name:"stage"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=1] run data modify storage bs:out block._[{name:"stage"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
