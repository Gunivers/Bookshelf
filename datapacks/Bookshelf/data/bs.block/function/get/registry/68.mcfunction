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
execute if block ~ ~ ~ #bs.block:has_state[orientation=north_up] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"north_up"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=south_up] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"south_up"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=down_east] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"down_east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=down_north] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"down_north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=down_south] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"down_south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=down_west] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"down_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=up_east] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"up_east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=up_north] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"up_north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=up_south] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"up_south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=up_west] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"up_west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=west_up] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"west_up"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[orientation=east_up] run data modify storage bs:out block._[{n:"orientation"}].o[{v:"east_up"}].c set value 1b
