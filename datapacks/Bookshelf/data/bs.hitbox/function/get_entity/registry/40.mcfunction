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

# phantom group
data modify storage bs:out hitbox set value {}
execute store result score #result bs.data run data get entity @s Size 15
scoreboard players add #result bs.data 100
scoreboard players set #hitbox.width bs.data 9
scoreboard players set #hitbox.height bs.data 5
execute store result storage bs:out hitbox.width double .001 run scoreboard players operation #hitbox.width bs.data *= #result bs.data
execute store result storage bs:out hitbox.height double .001 run scoreboard players operation #hitbox.height bs.data *= #result bs.data
