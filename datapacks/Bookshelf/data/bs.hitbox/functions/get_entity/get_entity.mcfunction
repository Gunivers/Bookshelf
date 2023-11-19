scoreboard players set #hitbox.get_entity.id bs.data 0
execute if entity @s[type=#bs.hitbox:group_1] run scoreboard players add #hitbox.get_entity.id bs.data 1
execute if entity @s[type=#bs.hitbox:group_2] run scoreboard players add #hitbox.get_entity.id bs.data 2
execute if entity @s[type=#bs.hitbox:group_4] run scoreboard players add #hitbox.get_entity.id bs.data 4
execute if entity @s[type=#bs.hitbox:group_8] run scoreboard players add #hitbox.get_entity.id bs.data 8
execute if entity @s[type=#bs.hitbox:group_16] run scoreboard players add #hitbox.get_entity.id bs.data 16
execute if entity @s[type=#bs.hitbox:group_32] run scoreboard players add #hitbox.get_entity.id bs.data 32
execute if entity @s[type=#bs.hitbox:group_64] run scoreboard players add #hitbox.get_entity.id bs.data 64

execute store result storage bs:ctx y short 1 run scoreboard players get #hitbox.get_entity.id bs.data
function bs.hitbox:get_entity/dispatch with storage bs:ctx
