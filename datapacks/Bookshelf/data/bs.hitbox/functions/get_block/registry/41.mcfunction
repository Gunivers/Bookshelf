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

# lantern group
execute if block ~ ~ ~ #bs.hitbox:shape/lantern[hanging=false] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 7, 11],[6, 7, 6, 10, 9, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/lantern[hanging=true] run data modify storage bs:out hitbox.shape set value [[5, 1, 5, 11, 8, 11],[6, 8, 6, 10, 10, 10]]
