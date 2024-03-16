# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[hatch=0] run data modify storage bs:out block.iterable_properties[{name:"hatch"}].options[{value:"0"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hatch=1] run data modify storage bs:out block.iterable_properties[{name:"hatch"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[hatch=2] run data modify storage bs:out block.iterable_properties[{name:"hatch"}].options[{value:"2"}].selected set value 1b