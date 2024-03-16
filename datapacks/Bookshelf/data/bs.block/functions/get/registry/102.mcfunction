# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[mode=load] run data modify storage bs:out block.iterable_properties[{name:"mode"}].options[{value:"load"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=corner] run data modify storage bs:out block.iterable_properties[{name:"mode"}].options[{value:"corner"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=data] run data modify storage bs:out block.iterable_properties[{name:"mode"}].options[{value:"data"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=save] run data modify storage bs:out block.iterable_properties[{name:"mode"}].options[{value:"save"}].selected set value 1b