# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[drag=true] run data modify storage bs:out block.iterable_properties[{name:"drag"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[drag=false] run data modify storage bs:out block.iterable_properties[{name:"drag"}].options[{value:"false"}].selected set value 1b
