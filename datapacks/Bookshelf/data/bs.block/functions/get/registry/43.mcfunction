# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[berries=false] run data modify storage bs:out block._[{name:"berries"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[berries=true] run data modify storage bs:out block._[{name:"berries"}].options[{value:"true"}].selected set value 1b
