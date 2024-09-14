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
#  Remove the enter callback with the given ID.
# Input:
#   - Macro { id: integer, callback_id: integer }
# Output: the number of leave callback remaining.

$data remove storage bs:data interaction.listener.$(id).enter[{id: $(callback_id)}]
$return run data remove storage bs:data interaction.listener.$(id).enter
