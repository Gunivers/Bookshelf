execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"east"}].selected set value 1b

execute if block ~ ~ ~ #bs.block:has_state[shape=straight] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"straight"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=inner_left] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"inner_left"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=outer_left] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"outer_left"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=inner_right] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"inner_right"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=outer_right] run data modify storage bs:out block.iterable_properties[{name:"shape"}].options[{value:"outer_right"}].selected set value 1b
