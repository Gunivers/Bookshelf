# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[east=none] run data modify storage bs:out block._[{n:"east"}].o[{v:"none"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[east=low] run data modify storage bs:out block._[{n:"east"}].o[{v:"low"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[east=tall] run data modify storage bs:out block._[{n:"east"}].o[{v:"tall"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=none] run data modify storage bs:out block._[{n:"north"}].o[{v:"none"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=low] run data modify storage bs:out block._[{n:"north"}].o[{v:"low"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[north=tall] run data modify storage bs:out block._[{n:"north"}].o[{v:"tall"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=none] run data modify storage bs:out block._[{n:"south"}].o[{v:"none"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=low] run data modify storage bs:out block._[{n:"south"}].o[{v:"low"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[south=tall] run data modify storage bs:out block._[{n:"south"}].o[{v:"tall"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[up=true] run data modify storage bs:out block._[{n:"up"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[up=false] run data modify storage bs:out block._[{n:"up"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=none] run data modify storage bs:out block._[{n:"west"}].o[{v:"none"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=low] run data modify storage bs:out block._[{n:"west"}].o[{v:"low"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[west=tall] run data modify storage bs:out block._[{n:"west"}].o[{v:"tall"}].c set value 1b
