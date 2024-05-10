# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[bottom=false] run data modify storage bs:out block._[{n:"bottom"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[bottom=true] run data modify storage bs:out block._[{n:"bottom"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=7] run data modify storage bs:out block._[{n:"distance"}].o[{v:"7"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=0] run data modify storage bs:out block._[{n:"distance"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=1] run data modify storage bs:out block._[{n:"distance"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=2] run data modify storage bs:out block._[{n:"distance"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=3] run data modify storage bs:out block._[{n:"distance"}].o[{v:"3"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=4] run data modify storage bs:out block._[{n:"distance"}].o[{v:"4"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=5] run data modify storage bs:out block._[{n:"distance"}].o[{v:"5"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[distance=6] run data modify storage bs:out block._[{n:"distance"}].o[{v:"6"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
