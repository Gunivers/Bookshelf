# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[age=0] run data modify storage bs:out block._[{n:"age"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=1] run data modify storage bs:out block._[{n:"age"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[leaves=none] run data modify storage bs:out block._[{n:"leaves"}].o[{v:"none"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[leaves=small] run data modify storage bs:out block._[{n:"leaves"}].o[{v:"small"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[leaves=large] run data modify storage bs:out block._[{n:"leaves"}].o[{v:"large"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=0] run data modify storage bs:out block._[{n:"stage"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[stage=1] run data modify storage bs:out block._[{n:"stage"}].o[{v:"1"}].c set value 1b
