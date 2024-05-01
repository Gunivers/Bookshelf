# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[lit=true] run data modify storage bs:out block._[{name:"lit"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[lit=false] run data modify storage bs:out block._[{name:"lit"}].options[{value:"false"}].selected set value 1b
