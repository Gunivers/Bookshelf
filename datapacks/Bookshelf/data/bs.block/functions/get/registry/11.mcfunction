# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[type=bottom] run data modify storage bs:out block._[{n:"type"}].o[{v:"bottom"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=double] run data modify storage bs:out block._[{n:"type"}].o[{v:"double"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=top] run data modify storage bs:out block._[{n:"type"}].o[{v:"top"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
