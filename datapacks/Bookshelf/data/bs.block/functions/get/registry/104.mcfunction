# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[unstable=false] run data modify storage bs:out block.iterable_properties[{name:"unstable"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[unstable=true] run data modify storage bs:out block.iterable_properties[{name:"unstable"}].options[{value:"true"}].selected set value 1b
