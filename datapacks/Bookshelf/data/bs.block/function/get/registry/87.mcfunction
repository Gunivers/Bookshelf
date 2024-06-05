# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[level=1] run data modify storage bs:out block._[{n:"level"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[level=2] run data modify storage bs:out block._[{n:"level"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[level=3] run data modify storage bs:out block._[{n:"level"}].o[{v:"3"}].c set value 1b
