# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[candles=1] run data modify storage bs:out block.iterable_properties[{name:"candles"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[candles=2] run data modify storage bs:out block.iterable_properties[{name:"candles"}].options[{value:"2"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[candles=3] run data modify storage bs:out block.iterable_properties[{name:"candles"}].options[{value:"3"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[candles=4] run data modify storage bs:out block.iterable_properties[{name:"candles"}].options[{value:"4"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[lit=false] run data modify storage bs:out block.iterable_properties[{name:"lit"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[lit=true] run data modify storage bs:out block.iterable_properties[{name:"lit"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b