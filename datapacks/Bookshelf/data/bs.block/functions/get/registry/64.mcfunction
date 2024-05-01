# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[snowy=false] run data modify storage bs:out block._[{name:"snowy"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[snowy=true] run data modify storage bs:out block._[{name:"snowy"}].options[{value:"true"}].selected set value 1b
