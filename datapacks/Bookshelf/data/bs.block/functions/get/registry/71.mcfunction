# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[hanging=false] run data modify storage bs:out block._[{name:"hanging"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hanging=true] run data modify storage bs:out block._[{name:"hanging"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
