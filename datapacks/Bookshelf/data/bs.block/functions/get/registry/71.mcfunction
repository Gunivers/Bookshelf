# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[hanging=false] run data modify storage bs:out block._[{n:"hanging"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hanging=true] run data modify storage bs:out block._[{n:"hanging"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
