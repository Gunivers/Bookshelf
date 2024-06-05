# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 21/11/2023 (1.20.3)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/hitbox.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

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
