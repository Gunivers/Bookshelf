# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[dusted=0] run data modify storage bs:out block._[{n:"dusted"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[dusted=1] run data modify storage bs:out block._[{n:"dusted"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[dusted=2] run data modify storage bs:out block._[{n:"dusted"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[dusted=3] run data modify storage bs:out block._[{n:"dusted"}].o[{v:"3"}].c set value 1b
