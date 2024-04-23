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
execute if entity @s[type=#bs.hitbox:shape/group_1] run scoreboard players add #hitbox.id bs.data 1
execute if entity @s[type=#bs.hitbox:shape/group_2] run scoreboard players add #hitbox.id bs.data 2
execute if entity @s[type=#bs.hitbox:shape/group_4] run scoreboard players add #hitbox.id bs.data 4
execute if entity @s[type=#bs.hitbox:shape/group_8] run scoreboard players add #hitbox.id bs.data 8
execute if entity @s[type=#bs.hitbox:shape/group_16] run scoreboard players add #hitbox.id bs.data 16
execute if entity @s[type=#bs.hitbox:shape/group_32] run scoreboard players add #hitbox.id bs.data 32
execute if entity @s[type=#bs.hitbox:shape/group_64] run scoreboard players add #hitbox.id bs.data 64

execute store result storage bs:ctx y short 1 run scoreboard players get #hitbox.id bs.data
function bs.hitbox:get_entity/dispatch with storage bs:ctx

execute store result storage bs:out hitbox.scale double .000001 store success score #success bs.data run attribute @s minecraft:generic.scale get 1000000
execute if score #success bs.data matches 0 run data modify storage bs:out hitbox.scale set value 1.0
