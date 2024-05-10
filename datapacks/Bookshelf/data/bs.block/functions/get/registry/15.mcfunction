# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[powered=false] run data modify storage bs:out block._[{n:"powered"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=true] run data modify storage bs:out block._[{n:"powered"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=north_south] run data modify storage bs:out block._[{n:"shape"}].o[{v:"north_south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=east_west] run data modify storage bs:out block._[{n:"shape"}].o[{v:"east_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_east] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_west] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_north] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_south] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
