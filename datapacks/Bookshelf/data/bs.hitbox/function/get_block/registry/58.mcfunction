# pointed_dripstone group
execute as B5-0-0-0-1 run function bs.hitbox:get_block/offset/get
execute if score #hitbox.offset.x bs.data matches 125.. run scoreboard players set #hitbox.offset.x bs.data 125
execute if score #hitbox.offset.x bs.data matches ..-125 run scoreboard players set #hitbox.offset.x bs.data -125
execute if score #hitbox.offset.z bs.data matches 125.. run scoreboard players set #hitbox.offset.z bs.data 125
execute if score #hitbox.offset.z bs.data matches ..-125 run scoreboard players set #hitbox.offset.z bs.data -125
execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=base] run data modify storage bs:out hitbox.shape set value [[2, 0, 2, 14, 16, 14]]
execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=middle] run data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=frustum] run data modify storage bs:out hitbox.shape set value [[4, 0, 4, 12, 16, 12]]
execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=tip_merge] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 16, 11]]
execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=tip,vertical_direction=up] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 11, 11]]
execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=tip,vertical_direction=down] run data modify storage bs:out hitbox.shape set value [[5, 5, 5, 11, 16, 11]]
