# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{name:"facing"}].options[{value:"east"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=false] run data modify storage bs:out block._[{name:"ominous"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=true] run data modify storage bs:out block._[{name:"ominous"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=inactive] run data modify storage bs:out block._[{name:"vault_state"}].options[{value:"inactive"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=active] run data modify storage bs:out block._[{name:"vault_state"}].options[{value:"active"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=unlocking] run data modify storage bs:out block._[{name:"vault_state"}].options[{value:"unlocking"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vault_state=ejecting] run data modify storage bs:out block._[{name:"vault_state"}].options[{value:"ejecting"}].selected set value 1b
