# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[berries=false] run data modify storage bs:out block._[{n:"berries"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[berries=true] run data modify storage bs:out block._[{n:"berries"}].o[{v:"true"}].c set value 1b
