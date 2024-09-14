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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/interaction.html#remove-on-event
# ------------------------------------------------------------------------------------------------------------

# Created: 30/03/2024 (24w13a)
# Last modification: 30/03/2024 (24w13a)

# Documentation:
# Dependencies:
# Note:
#  Remove a callback for the enter event on the current listener.
# Input:
#   - Macro { callback_id: integer }
#   - @s - the current listener

# CODE ------------------------------------------------------------------------

execute unless predicate bs.interaction:is_listener run function #bs.log:error { namespace: bs.interaction, path: "bs.interaction:event/enter/remove", tag: "interaction.event.enter.remove", message: '"The current entity is not a listener."' }
execute unless predicate bs.interaction:is_listener run return fail

$data modify storage bs:ctx _ set value { callback_id: $(callback_id) }
execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id

# Return the number of remaining callbacks for the enter event
execute store result score #result bs.data run function bs.interaction:event/enter/remove_callback with storage bs:ctx _

execute if score #result bs.data matches 0 run tag @s[tag=bs.interaction.listen_enter] remove bs.interaction.listen_enter
execute if score #result bs.data matches 0 run tag @s[tag=!bs.interaction.listen_hover, tag=!bs.interaction.listen_leave] remove bs.interaction.hover
