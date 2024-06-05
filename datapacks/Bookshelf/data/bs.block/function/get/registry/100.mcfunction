# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[hatch=0] run data modify storage bs:out block._[{n:"hatch"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hatch=1] run data modify storage bs:out block._[{n:"hatch"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hatch=2] run data modify storage bs:out block._[{n:"hatch"}].o[{v:"2"}].c set value 1b
