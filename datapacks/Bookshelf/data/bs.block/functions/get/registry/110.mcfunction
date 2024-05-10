# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{n:"facing"}].o[{v:"north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{n:"facing"}].o[{v:"south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{n:"facing"}].o[{v:"west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{n:"facing"}].o[{v:"east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=false] run data modify storage bs:out block._[{n:"ominous"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=true] run data modify storage bs:out block._[{n:"ominous"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=inactive] run data modify storage bs:out block._[{n:"vault_state"}].o[{v:"inactive"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=active] run data modify storage bs:out block._[{n:"vault_state"}].o[{v:"active"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=unlocking] run data modify storage bs:out block._[{n:"vault_state"}].o[{v:"unlocking"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=ejecting] run data modify storage bs:out block._[{n:"vault_state"}].o[{v:"ejecting"}].c set value 1b
