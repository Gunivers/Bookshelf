# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[drag=true] run data modify storage bs:out block._[{n:"drag"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[drag=false] run data modify storage bs:out block._[{n:"drag"}].o[{v:"false"}].c set value 1b
