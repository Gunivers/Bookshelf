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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#get
# ------------------------------------------------------------------------------------------------------------

scoreboard players set #hitbox.id bs.data 0
execute if block ~ ~ ~ #bs.hitbox:shape/group_1 run scoreboard players add #hitbox.id bs.data 1
execute if block ~ ~ ~ #bs.hitbox:shape/group_2 run scoreboard players add #hitbox.id bs.data 2
execute if block ~ ~ ~ #bs.hitbox:shape/group_4 run scoreboard players add #hitbox.id bs.data 4
execute if block ~ ~ ~ #bs.hitbox:shape/group_8 run scoreboard players add #hitbox.id bs.data 8
execute if block ~ ~ ~ #bs.hitbox:shape/group_16 run scoreboard players add #hitbox.id bs.data 16
execute if block ~ ~ ~ #bs.hitbox:shape/group_32 run scoreboard players add #hitbox.id bs.data 32
execute if block ~ ~ ~ #bs.hitbox:shape/group_64 run scoreboard players add #hitbox.id bs.data 64

data modify storage bs:out hitbox set value {shape:[],offset:{x:0d,z:0d}}
execute store result storage bs:ctx y short 1 run scoreboard players get #hitbox.id bs.data
function bs.hitbox:get_block/dispatch with storage bs:ctx
