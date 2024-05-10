# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[unstable=false] run data modify storage bs:out block._[{n:"unstable"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[unstable=true] run data modify storage bs:out block._[{n:"unstable"}].o[{v:"true"}].c set value 1b
