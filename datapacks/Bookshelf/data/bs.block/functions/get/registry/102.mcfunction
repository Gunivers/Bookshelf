# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[mode=load] run data modify storage bs:out block._[{n:"mode"}].o[{v:"load"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=corner] run data modify storage bs:out block._[{n:"mode"}].o[{v:"corner"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=data] run data modify storage bs:out block._[{n:"mode"}].o[{v:"data"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=save] run data modify storage bs:out block._[{n:"mode"}].o[{v:"save"}].c set value 1b
