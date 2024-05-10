# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[lit=true] run data modify storage bs:out block._[{n:"lit"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[lit=false] run data modify storage bs:out block._[{n:"lit"}].o[{v:"false"}].c set value 1b
