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
execute if block ~ ~ ~ #bs.block:has_state[age=0] run data modify storage bs:out block._[{n:"age"}].o[{v:"0"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=1] run data modify storage bs:out block._[{n:"age"}].o[{v:"1"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=2] run data modify storage bs:out block._[{n:"age"}].o[{v:"2"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=3] run data modify storage bs:out block._[{n:"age"}].o[{v:"3"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=4] run data modify storage bs:out block._[{n:"age"}].o[{v:"4"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[age=5] run data modify storage bs:out block._[{n:"age"}].o[{v:"5"}].c set value 1b
