# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[axis=y] run data modify storage bs:out block._[{n:"axis"}].o[{v:"y"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[axis=z] run data modify storage bs:out block._[{n:"axis"}].o[{v:"z"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[axis=x] run data modify storage bs:out block._[{n:"axis"}].o[{v:"x"}].c set value 1b
