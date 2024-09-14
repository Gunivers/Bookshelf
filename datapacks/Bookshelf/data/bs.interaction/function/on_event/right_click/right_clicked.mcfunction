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

# Note:
#  Function called when a right click is done on a right click listener.

advancement revoke @s only bs.interaction:right_click
tag @s add bs.interaction.source
execute as @e[predicate=bs.interaction:on_right_click] at @s on target if entity @s[tag=bs.interaction.source] as @e[type=interaction, limit=1, sort=nearest] run tag @s add bs.interaction.target

# Get the function to execute
data modify storage bs:ctx _ set value {}
execute store result storage bs:ctx _.id int 1 run scoreboard players get @e[tag=bs.interaction.target, limit=1] bs.id
function bs.interaction:on_event/right_click/get_function with storage bs:ctx _

data modify storage bs:in interaction.callbacks set from storage bs:out interaction.callbacks
execute if data storage bs:in interaction.callbacks[0] run function bs.interaction:on_event/prepare_function_execution

tag @s remove bs.interaction.source
tag @e[tag=bs.interaction.target] remove bs.interaction.target
