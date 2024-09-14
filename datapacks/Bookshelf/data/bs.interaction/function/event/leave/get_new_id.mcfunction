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
#  Define a custom behavior for the leave event for the current interaction.
#
# Output:
#  - Return a new ID based on the ID of the last registered event incremented by 1.
#  - 0 if no event has been registered yet.

$execute store result score #result bs.data run data get storage bs:data interaction.listener.$(id).leave[-1].id
scoreboard players add #result bs.data 1
return run scoreboard players get #result bs.data
