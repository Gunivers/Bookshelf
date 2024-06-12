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

# player group
data modify storage bs:out hitbox set value {width:0.6,height:1.8}
execute at @s positioned ~ ~1.6 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 1.5
execute at @s positioned ~ ~1 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 0.6
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox set value {width:0.2,height:0.2}
