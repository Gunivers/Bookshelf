# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[type=normal] run data modify storage bs:out block._[{n:"type"}].o[{v:"normal"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[type=sticky] run data modify storage bs:out block._[{n:"type"}].o[{v:"sticky"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{n:"facing"}].o[{v:"north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{n:"facing"}].o[{v:"east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{n:"facing"}].o[{v:"south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{n:"facing"}].o[{v:"west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=up] run data modify storage bs:out block._[{n:"facing"}].o[{v:"up"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=down] run data modify storage bs:out block._[{n:"facing"}].o[{v:"down"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[short=false] run data modify storage bs:out block._[{n:"short"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[short=true] run data modify storage bs:out block._[{n:"short"}].o[{v:"true"}].c set value 1b
