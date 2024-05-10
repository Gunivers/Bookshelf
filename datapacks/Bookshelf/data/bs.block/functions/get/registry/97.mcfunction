# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[can_summon=false] run data modify storage bs:out block._[{n:"can_summon"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[can_summon=true] run data modify storage bs:out block._[{n:"can_summon"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shrieking=false] run data modify storage bs:out block._[{n:"shrieking"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shrieking=true] run data modify storage bs:out block._[{n:"shrieking"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
