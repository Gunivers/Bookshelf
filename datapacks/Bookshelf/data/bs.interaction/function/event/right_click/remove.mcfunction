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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/interaction.html#remove-on-event
# ------------------------------------------------------------------------------------------------------------

# Note:
#  Remove a callback for the right_click event on the current listener.
# Input:
#   - Macro { callback_id: integer }
#   - @s - the current listener

execute unless predicate bs.interaction:is_listener run function #bs.log:error { namespace: bs.interaction, path: "bs.interaction:event/right_click/remove", tag: "interaction.event.right_click.remove", message: '"The current entity is not a listener."' }
execute unless predicate bs.interaction:is_listener run return fail

$data modify storage bs:ctx _ set value { callback_id: $(callback_id) }
execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id

# Return the number of remaining callbacks for the right_click event
execute store result score #result bs.data run function bs.interaction:event/right_click/remove_callback with storage bs:ctx _

execute if score #result bs.data matches 0 run tag @s[tag=!bs.interaction.listen_right_click] remove bs.interaction.right_click
