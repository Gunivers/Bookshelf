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

# sniffer group
execute at @s positioned ~ ~1.5 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width:1.9,height:1.75}
execute unless predicate bs.hitbox:is_baby run return run data modify storage bs:out hitbox set value {width:1.9,height:0.4}
execute at @s positioned ~ ~.5 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width:0.95,height:0.875}
data modify storage bs:out hitbox set value {width:0.95,height:0.4}
