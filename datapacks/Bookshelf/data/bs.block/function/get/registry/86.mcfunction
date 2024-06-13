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
execute if block ~ ~ ~ #bs.block:has_state[thickness=tip] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"tip"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=frustum] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"frustum"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=middle] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"middle"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=base] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"base"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[thickness=tip_merge] run data modify storage bs:out block._[{n:"thickness"}].o[{v:"tip_merge"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vertical_direction=up] run data modify storage bs:out block._[{n:"vertical_direction"}].o[{v:"up"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[vertical_direction=down] run data modify storage bs:out block._[{n:"vertical_direction"}].o[{v:"down"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=false] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[waterlogged=true] run data modify storage bs:out block._[{n:"waterlogged"}].o[{v:"true"}].c set value 1b
