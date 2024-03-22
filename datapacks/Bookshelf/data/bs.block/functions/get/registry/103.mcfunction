# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[dusted=0] run data modify storage bs:out block.iterable_properties[{name:"dusted"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[dusted=1] run data modify storage bs:out block.iterable_properties[{name:"dusted"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[dusted=2] run data modify storage bs:out block.iterable_properties[{name:"dusted"}].options[{value:"2"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[dusted=3] run data modify storage bs:out block.iterable_properties[{name:"dusted"}].options[{value:"3"}].selected set value 1b
