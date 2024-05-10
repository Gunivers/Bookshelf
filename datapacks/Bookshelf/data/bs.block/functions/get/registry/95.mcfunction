# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[bloom=false] run data modify storage bs:out block._[{n:"bloom"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[bloom=true] run data modify storage bs:out block._[{n:"bloom"}].o[{v:"true"}].c set value 1b
