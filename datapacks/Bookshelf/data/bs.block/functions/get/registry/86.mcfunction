# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[thickness=tip] run data modify storage bs:out block.iterable_properties[{name:"thickness"}].options[{value:"tip"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=frustum] run data modify storage bs:out block.iterable_properties[{name:"thickness"}].options[{value:"frustum"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=middle] run data modify storage bs:out block.iterable_properties[{name:"thickness"}].options[{value:"middle"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=base] run data modify storage bs:out block.iterable_properties[{name:"thickness"}].options[{value:"base"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=tip_merge] run data modify storage bs:out block.iterable_properties[{name:"thickness"}].options[{value:"tip_merge"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vertical_direction=up] run data modify storage bs:out block.iterable_properties[{name:"vertical_direction"}].options[{value:"up"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vertical_direction=down] run data modify storage bs:out block.iterable_properties[{name:"vertical_direction"}].options[{value:"down"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block.iterable_properties[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b