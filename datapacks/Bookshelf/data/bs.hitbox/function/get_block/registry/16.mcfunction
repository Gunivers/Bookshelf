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

# candle group
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=1] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 6, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=2] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 6, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=3] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 10, 6, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=4] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 6, 10]]
