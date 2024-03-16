# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[attached=false] run data modify storage bs:out block.iterable_properties[{name:"attached"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[attached=true] run data modify storage bs:out block.iterable_properties[{name:"attached"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[disarmed=false] run data modify storage bs:out block.iterable_properties[{name:"disarmed"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[disarmed=true] run data modify storage bs:out block.iterable_properties[{name:"disarmed"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[east=false] run data modify storage bs:out block.iterable_properties[{name:"east"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[east=true] run data modify storage bs:out block.iterable_properties[{name:"east"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=false] run data modify storage bs:out block.iterable_properties[{name:"north"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=true] run data modify storage bs:out block.iterable_properties[{name:"north"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=false] run data modify storage bs:out block.iterable_properties[{name:"powered"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[powered=true] run data modify storage bs:out block.iterable_properties[{name:"powered"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=false] run data modify storage bs:out block.iterable_properties[{name:"south"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=true] run data modify storage bs:out block.iterable_properties[{name:"south"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=false] run data modify storage bs:out block.iterable_properties[{name:"west"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=true] run data modify storage bs:out block.iterable_properties[{name:"west"}].options[{value:"true"}].selected set value 1b