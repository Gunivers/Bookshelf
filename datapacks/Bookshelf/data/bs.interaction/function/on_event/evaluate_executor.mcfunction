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
#  Add a new callback to trigger when the current interaction is hover entered.
# Input:
#  - macro variable { executor: <selector> }
# Output:
#  - bs:ctx _.executor is set to the UUID of the entity pointed by the selector.
#    If the selector point to multiple entities, bs:ctx _.executor is an array of UUIDs and bs:ctx_.multiple is set to true.

$tag $(executor) add bs.interaction.executor
execute store result score _ bs.ctx if entity @e[tag=bs.interaction.executor]
execute if score _ bs.ctx matches 2.. run data modify storage bs:ctx _ set value { multiple: true, executor: [] }
execute as @e[tag=bs.interaction.executor] run data modify storage bs:ctx _.executor append from entity @s UUID
tag @e[tag=bs.interaction.executor] remove bs.interaction.executor
