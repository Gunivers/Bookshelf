# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{n:"facing"}].o[{v:"north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{n:"facing"}].o[{v:"south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{n:"facing"}].o[{v:"west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{n:"facing"}].o[{v:"east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[occupied=false] run data modify storage bs:out block._[{n:"occupied"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[occupied=true] run data modify storage bs:out block._[{n:"occupied"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[part=foot] run data modify storage bs:out block._[{n:"part"}].o[{v:"foot"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[part=head] run data modify storage bs:out block._[{n:"part"}].o[{v:"head"}].c set value 1b
