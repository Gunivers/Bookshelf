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
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block._[{n:"facing"}].o[{v:"north"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block._[{n:"facing"}].o[{v:"south"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block._[{n:"facing"}].o[{v:"west"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block._[{n:"facing"}].o[{v:"east"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[occupied=false] run data modify storage bs:out block._[{n:"occupied"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[occupied=true] run data modify storage bs:out block._[{n:"occupied"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[part=foot] run data modify storage bs:out block._[{n:"part"}].o[{v:"foot"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[part=head] run data modify storage bs:out block._[{n:"part"}].o[{v:"head"}].c set value 1b
