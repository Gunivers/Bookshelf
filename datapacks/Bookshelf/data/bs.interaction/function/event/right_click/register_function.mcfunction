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
#  Add a function to execute when an right click event is triggered on the listener with the specified ID.
#
# Input:
#  - macro variable { callback: function, id: integer, callback_id: integer, executor: target|source|<selector>|<uuid:array>, interpreted: boolean }

$data modify storage bs:data interaction.listener.$(id).right_click append value { id: $(callback_id), callback: "$(callback)", executor: "$(executor)", interpreted: $(interpreted) }
