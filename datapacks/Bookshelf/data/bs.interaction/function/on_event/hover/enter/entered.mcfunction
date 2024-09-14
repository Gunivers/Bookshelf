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
#  Executed when an interaction is hovered, trigger the action linked to the current interaction, defined with the enter/add function.

tag @s add bs.interaction.target

# Get the function to execute
data modify storage bs:ctx _ set value {}
execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id
function bs.interaction:on_event/hover/enter/get_function with storage bs:ctx _

data modify storage bs:in interaction.callbacks set from storage bs:out interaction.callbacks
execute if data storage bs:in interaction.callbacks[0] run function bs.interaction:on_event/prepare_function_execution

tag @s remove bs.interaction.target
