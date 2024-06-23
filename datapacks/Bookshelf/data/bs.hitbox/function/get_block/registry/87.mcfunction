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

# tripwire group
execute if block ~ ~ ~ minecraft:tripwire[attached=true] run data modify storage bs:out hitbox.shape set value [[0.0, 1.0, 0.0, 16.0, 2.5, 16.0]]
execute if block ~ ~ ~ minecraft:tripwire[attached=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
