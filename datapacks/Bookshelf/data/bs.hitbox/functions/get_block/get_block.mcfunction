scoreboard players set #hitbox.get_block.offset_x bs.data 0
scoreboard players set #hitbox.get_block.offset_z bs.data 0
execute if block ~ ~ ~ #bs.hitbox:has_offset run function bs.hitbox:get_block/offset/get

scoreboard players set #hitbox.get_block.id bs.data 0
execute if block ~ ~ ~ #bs.hitbox:group_1 run scoreboard players add #hitbox.get_block.id bs.data 1
execute if block ~ ~ ~ #bs.hitbox:group_2 run scoreboard players add #hitbox.get_block.id bs.data 2
execute if block ~ ~ ~ #bs.hitbox:group_4 run scoreboard players add #hitbox.get_block.id bs.data 4
execute if block ~ ~ ~ #bs.hitbox:group_8 run scoreboard players add #hitbox.get_block.id bs.data 8
execute if block ~ ~ ~ #bs.hitbox:group_16 run scoreboard players add #hitbox.get_block.id bs.data 16
execute if block ~ ~ ~ #bs.hitbox:group_32 run scoreboard players add #hitbox.get_block.id bs.data 32
execute if block ~ ~ ~ #bs.hitbox:group_64 run scoreboard players add #hitbox.get_block.id bs.data 64

execute store result storage bs:ctx y short 1 run scoreboard players get #hitbox.get_block.id bs.data
function bs.hitbox:get_block/dispatch with storage bs:ctx
