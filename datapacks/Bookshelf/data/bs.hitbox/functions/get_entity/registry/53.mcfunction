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
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run data modify storage bs:out hitbox set value {width:1.9,height:1.75}
execute if score #success bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.95,height:0.875}
execute if score #success bs.data matches 0 at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 0.4
execute if score #success bs.data matches 1 at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 0.4
