# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[down=false] run data modify storage bs:out block._[{name:"down"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[down=true] run data modify storage bs:out block._[{name:"down"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[east=false] run data modify storage bs:out block._[{name:"east"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[east=true] run data modify storage bs:out block._[{name:"east"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=false] run data modify storage bs:out block._[{name:"north"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=true] run data modify storage bs:out block._[{name:"north"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=false] run data modify storage bs:out block._[{name:"south"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=true] run data modify storage bs:out block._[{name:"south"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[up=false] run data modify storage bs:out block._[{name:"up"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[up=true] run data modify storage bs:out block._[{name:"up"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{name:"waterlogged"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=false] run data modify storage bs:out block._[{name:"west"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=true] run data modify storage bs:out block._[{name:"west"}].options[{value:"true"}].selected set value 1b
