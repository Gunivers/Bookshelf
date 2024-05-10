# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[attachment=floor] run data modify storage bs:out block._[{n:"attachment"}].o[{v:"floor"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[attachment=ceiling] run data modify storage bs:out block._[{n:"attachment"}].o[{v:"ceiling"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[attachment=single_wall] run data modify storage bs:out block._[{n:"attachment"}].o[{v:"single_wall"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[attachment=double_wall] run data modify storage bs:out block._[{n:"attachment"}].o[{v:"double_wall"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{n:"facing"}].o[{v:"north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{n:"facing"}].o[{v:"south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{n:"facing"}].o[{v:"west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{n:"facing"}].o[{v:"east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=false] run data modify storage bs:out block._[{n:"powered"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=true] run data modify storage bs:out block._[{n:"powered"}].o[{v:"true"}].c set value 1b
