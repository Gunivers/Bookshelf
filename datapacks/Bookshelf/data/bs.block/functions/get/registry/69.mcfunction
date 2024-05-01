# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[has_record=false] run data modify storage bs:out block._[{name:"has_record"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[has_record=true] run data modify storage bs:out block._[{name:"has_record"}].options[{value:"true"}].selected set value 1b
