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

# slime_like group
execute store result score #result bs.data run data get entity @s Size
scoreboard players add #result bs.data 1
scoreboard players operation #result bs.data *= 255 bs.const
scoreboard players set #hitbox.width bs.data 2040
scoreboard players set #hitbox.height bs.data 2040
execute store result storage bs:out hitbox.width double .000001 run scoreboard players operation #hitbox.width bs.data *= #result bs.data
execute store result storage bs:out hitbox.height double .000001 run scoreboard players operation #hitbox.height bs.data *= #result bs.data
