# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[half=lower] run data modify storage bs:out block._[{name:"half"}].options[{value:"lower"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[half=upper] run data modify storage bs:out block._[{name:"half"}].options[{value:"upper"}].selected set value 1b
