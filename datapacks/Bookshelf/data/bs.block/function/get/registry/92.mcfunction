# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[delay=1] run data modify storage bs:out block._[{n:"delay"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[delay=2] run data modify storage bs:out block._[{n:"delay"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[delay=3] run data modify storage bs:out block._[{n:"delay"}].o[{v:"3"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[delay=4] run data modify storage bs:out block._[{n:"delay"}].o[{v:"4"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{n:"facing"}].o[{v:"north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{n:"facing"}].o[{v:"south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{n:"facing"}].o[{v:"west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{n:"facing"}].o[{v:"east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[locked=false] run data modify storage bs:out block._[{n:"locked"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[locked=true] run data modify storage bs:out block._[{n:"locked"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=false] run data modify storage bs:out block._[{n:"powered"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=true] run data modify storage bs:out block._[{n:"powered"}].o[{v:"true"}].c set value 1b
