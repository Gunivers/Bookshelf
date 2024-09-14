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

execute as @e[predicate=bs.interaction:is_listener] run function bs.interaction:event/clear_events

data remove storage bs:data gui
scoreboard objectives remove bs.interaction.hover_state
scoreboard objectives remove bs.interaction.id
scoreboard objectives remove bs.ctx

kill B5-0-0-0-4
forceload remove -30000000 1600
