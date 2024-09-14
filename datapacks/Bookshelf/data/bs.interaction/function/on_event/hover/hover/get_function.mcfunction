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
#  Input:
#    - storage { id: integer } the key where the function is stored
#  Output:
#    - bs:out interaction.callbacks the function to execute and its executor

$execute if data storage bs:data interaction.listener.$(id).hover run data modify storage bs:out interaction.callbacks set from storage bs:data interaction.listener.$(id).hover
