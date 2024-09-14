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

tag @e[tag=bs.interaction.view.b0,sort=arbitrary] remove bs.interaction.view.b0
tag @e[tag=bs.interaction.view.b1,sort=arbitrary] remove bs.interaction.view.b1
tag @e[tag=bs.interaction.view.b2,sort=arbitrary] remove bs.interaction.view.b2
tag @e[tag=bs.interaction.view.b3,sort=arbitrary] remove bs.interaction.view.b3
tag @e[tag=bs.interaction.view.b4,sort=arbitrary] remove bs.interaction.view.b4
tag @e[tag=bs.interaction.view.b5,sort=arbitrary] remove bs.interaction.view.b5
tag @e[tag=bs.interaction.view.b6,sort=arbitrary] remove bs.interaction.view.b6
tag @e[tag=bs.interaction.view.b7,sort=arbitrary] remove bs.interaction.view.b7
tag @e[tag=bs.interaction.view.bi,sort=arbitrary] remove bs.interaction.view.bi

scoreboard players set #interaction.view.looked_entity bs.data 0
execute as @e[tag=bs.interaction.hover,sort=arbitrary] store result score @s bs.data run scoreboard players add #interaction.view.looked_entity bs.data 1

tag @e[tag=bs.interaction.hover,scores={bs.data=128..},sort=arbitrary] add bs.interaction.view.b7
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=128..},sort=arbitrary] bs.data 128
tag @e[tag=bs.interaction.hover,scores={bs.data=64..},sort=arbitrary] add bs.interaction.view.b6
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=64..},sort=arbitrary] bs.data 64
tag @e[tag=bs.interaction.hover,scores={bs.data=32..},sort=arbitrary] add bs.interaction.view.b5
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=32..},sort=arbitrary] bs.data 32
tag @e[tag=bs.interaction.hover,scores={bs.data=16..},sort=arbitrary] add bs.interaction.view.b4
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=16..},sort=arbitrary] bs.data 16
tag @e[tag=bs.interaction.hover,scores={bs.data=8..},sort=arbitrary] add bs.interaction.view.b3
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=8..},sort=arbitrary] bs.data 8
tag @e[tag=bs.interaction.hover,scores={bs.data=4..},sort=arbitrary] add bs.interaction.view.b2
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=4..},sort=arbitrary] bs.data 4
tag @e[tag=bs.interaction.hover,scores={bs.data=2..},sort=arbitrary] add bs.interaction.view.b1
scoreboard players remove @e[tag=bs.interaction.hover,scores={bs.data=2..},sort=arbitrary] bs.data 2
tag @e[tag=bs.interaction.hover,scores={bs.data=1..},sort=arbitrary] add bs.interaction.view.b0
scoreboard players reset @e[tag=bs.interaction.hover,sort=arbitrary] bs.data
tag @e[tag=bs.interaction.hover,sort=arbitrary] add bs.interaction.view.bi
