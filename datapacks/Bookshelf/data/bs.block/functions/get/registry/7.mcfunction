# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[axis=y] run data modify storage bs:out block._[{name:"axis"}].options[{value:"y"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[axis=z] run data modify storage bs:out block._[{name:"axis"}].options[{value:"z"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[axis=x] run data modify storage bs:out block._[{name:"axis"}].options[{value:"x"}].selected set value 1b
