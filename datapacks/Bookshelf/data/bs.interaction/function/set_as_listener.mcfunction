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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/interaction.html#listener
# ------------------------------------------------------------------------------------------------------------

# Note:
#  Input:
#  - Context: entity @s[type=interaction]
#
# Define the current interaction as a listener for events.

execute unless entity @s[type=interaction] run function #bs.log:error { namespace: bs.interaction, path: "bs.interaction:set_as_listener", tag: "interaction.set_as_listener", message: '"The current entity is not an interaction."' }
execute unless entity @s[type=interaction] run return fail

execute if entity @s[predicate=!bs.interaction:has_uid] run function bs.interaction:give_uid
tag @s add bs.interaction.listener
