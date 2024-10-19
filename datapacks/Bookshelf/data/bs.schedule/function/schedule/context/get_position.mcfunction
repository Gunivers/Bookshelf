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

tp @s ~ ~ ~ ~ ~
data modify storage bs:ctx _ merge from entity @s
data modify storage bs:ctx _.x set from storage bs:ctx _.Pos[0]
data modify storage bs:ctx _.y set from storage bs:ctx _.Pos[1]
data modify storage bs:ctx _.z set from storage bs:ctx _.Pos[2]
data modify storage bs:ctx _.h set from storage bs:ctx _.Rotation[0]
data modify storage bs:ctx _.v set from storage bs:ctx _.Rotation[1]
kill @s
