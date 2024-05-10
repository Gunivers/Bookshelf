# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[thickness=tip] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"tip"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=frustum] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"frustum"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=middle] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"middle"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=base] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"base"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=tip_merge] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"tip_merge"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vertical_direction=up] run data modify storage bs:out block._[{n:"vertical_direction"}].o[{v:"up"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vertical_direction=down] run data modify storage bs:out block._[{n:"vertical_direction"}].o[{v:"down"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
