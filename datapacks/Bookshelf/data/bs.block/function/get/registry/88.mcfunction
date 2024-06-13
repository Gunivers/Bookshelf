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
execute if block ~ ~ ~ #bs.block:has_state[shape=north_south] run data modify storage bs:out block._[{n:"shape"}].o[{v:"north_south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=east_west] run data modify storage bs:out block._[{n:"shape"}].o[{v:"east_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_east] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_west] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_north] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=ascending_south] run data modify storage bs:out block._[{n:"shape"}].o[{v:"ascending_south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=south_east] run data modify storage bs:out block._[{n:"shape"}].o[{v:"south_east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=south_west] run data modify storage bs:out block._[{n:"shape"}].o[{v:"south_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=north_west] run data modify storage bs:out block._[{n:"shape"}].o[{v:"north_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[shape=north_east] run data modify storage bs:out block._[{n:"shape"}].o[{v:"north_east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
