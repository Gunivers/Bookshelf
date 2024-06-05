# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[charges=0] run data modify storage bs:out block._[{n:"charges"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[charges=1] run data modify storage bs:out block._[{n:"charges"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[charges=2] run data modify storage bs:out block._[{n:"charges"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[charges=3] run data modify storage bs:out block._[{n:"charges"}].o[{v:"3"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[charges=4] run data modify storage bs:out block._[{n:"charges"}].o[{v:"4"}].c set value 1b
