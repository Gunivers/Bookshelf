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

# stair group
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[facing=west] run scoreboard players set #hitbox.get_block.shape bs.data 0
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[facing=north] run scoreboard players set #hitbox.get_block.shape bs.data 1
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[facing=east] run scoreboard players set #hitbox.get_block.shape bs.data 2
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[facing=south] run scoreboard players set #hitbox.get_block.shape bs.data 3
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[shape=inner_left] run scoreboard players add #hitbox.get_block.shape bs.data 4
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[shape=inner_right] run scoreboard players add #hitbox.get_block.shape bs.data 5
execute if score #hitbox.get_block.shape bs.data matches 8.. run scoreboard players remove #hitbox.get_block.shape bs.data 4
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[shape=outer_left] run scoreboard players add #hitbox.get_block.shape bs.data 8
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[shape=outer_right] run scoreboard players add #hitbox.get_block.shape bs.data 9
execute if score #hitbox.get_block.shape bs.data matches 12.. run scoreboard players remove #hitbox.get_block.shape bs.data 4
execute if score #hitbox.get_block.shape bs.data matches 0 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 8, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 1 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 16, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 2 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 0, 16, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 3 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 8, 16, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 4 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 8, 16, 16],[8, 8, 8, 16, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 5 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 16, 16, 8],[0, 8, 8, 8, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 6 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 0, 16, 16, 16],[0, 8, 0, 8, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 7 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 8, 16, 16, 16],[8, 8, 0, 16, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 8 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 8, 8, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 9 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 8, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 10 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 0, 16, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 11 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 8, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/stairs[half=top] run scoreboard players set #hitbox.get_block.shape bs.data -1
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[][1] set value 0
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[][4] set value 8
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[0][1] set value 8
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[0][4] set value 16
