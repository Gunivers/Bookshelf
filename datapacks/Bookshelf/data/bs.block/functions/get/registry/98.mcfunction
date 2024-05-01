# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[pickles=1] run data modify storage bs:out block._[{name:"pickles"}].options[{value:"1"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[pickles=2] run data modify storage bs:out block._[{name:"pickles"}].options[{value:"2"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[pickles=3] run data modify storage bs:out block._[{name:"pickles"}].options[{value:"3"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[pickles=4] run data modify storage bs:out block._[{name:"pickles"}].options[{value:"4"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
