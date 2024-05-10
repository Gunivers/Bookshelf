# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[age=0] run data modify storage bs:out block._[{n:"age"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=1] run data modify storage bs:out block._[{n:"age"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=2] run data modify storage bs:out block._[{n:"age"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=3] run data modify storage bs:out block._[{n:"age"}].o[{v:"3"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=4] run data modify storage bs:out block._[{n:"age"}].o[{v:"4"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hanging=false] run data modify storage bs:out block._[{n:"hanging"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hanging=true] run data modify storage bs:out block._[{n:"hanging"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=0] run data modify storage bs:out block._[{n:"stage"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=1] run data modify storage bs:out block._[{n:"stage"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
