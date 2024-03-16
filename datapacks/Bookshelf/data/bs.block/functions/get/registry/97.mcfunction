# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[can_summon=false] run data modify storage bs:out block.iterable_properties[{name:"can_summon"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[can_summon=true] run data modify storage bs:out block.iterable_properties[{name:"can_summon"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shrieking=false] run data modify storage bs:out block.iterable_properties[{name:"shrieking"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shrieking=true] run data modify storage bs:out block.iterable_properties[{name:"shrieking"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b