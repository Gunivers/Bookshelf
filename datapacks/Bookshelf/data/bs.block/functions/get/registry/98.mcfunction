# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[pickles=1] run data modify storage bs:out block._[{n:"pickles"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[pickles=2] run data modify storage bs:out block._[{n:"pickles"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[pickles=3] run data modify storage bs:out block._[{n:"pickles"}].o[{v:"3"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[pickles=4] run data modify storage bs:out block._[{n:"pickles"}].o[{v:"4"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
