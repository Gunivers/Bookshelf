# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[half=lower] run data modify storage bs:out block._[{n:"half"}].o[{v:"lower"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[half=upper] run data modify storage bs:out block._[{n:"half"}].o[{v:"upper"}].c set value 1b
