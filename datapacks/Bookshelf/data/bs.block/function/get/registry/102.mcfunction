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
execute if block ~ ~ ~ #bs.block:has_state[mode=load] run data modify storage bs:out block._[{n:"mode"}].o[{v:"load"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=corner] run data modify storage bs:out block._[{n:"mode"}].o[{v:"corner"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=data] run data modify storage bs:out block._[{n:"mode"}].o[{v:"data"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[mode=save] run data modify storage bs:out block._[{n:"mode"}].o[{v:"save"}].c set value 1b
