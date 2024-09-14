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
#  Executed when an interaction is left clicked, trigger the callbacks linked to the current interaction, defined with the left_click/add function.
# Input:
#  - bs:in interaction.callbacks: The list of callbacks linked to the current interaction for the left click event.

data modify storage bs:in interaction.callback set from storage bs:in interaction.callbacks[0]
data modify storage bs:ctx _ set value { multiple: false }

# Get the executor and place the UUID(s) in bs:ctx _.executor
execute if data storage bs:in interaction.callback run function bs.interaction:on_event/get_executor

data modify storage bs:ctx _.function set from storage bs:in interaction.callback.callback

function bs.interaction:on_event/execute_function_single_or_multiple

data remove storage bs:in interaction.callbacks[0]
execute if data storage bs:in interaction.callbacks[0] run function bs.interaction:on_event/prepare_function_execution

tag @e[tag=bs.interaction.executor] remove bs.interaction.executor
