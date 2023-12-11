# slime_like group
execute store result score #hitbox.get_entity.size bs.data run data get entity @s Size
scoreboard players add #hitbox.get_entity.size bs.data 1
scoreboard players operation #hitbox.get_entity.size bs.data *= 255 bs.const
scoreboard players set $hitbox.width bs.out 2040
scoreboard players set $hitbox.height bs.out 2040
scoreboard players operation $hitbox.width bs.out *= #hitbox.get_entity.size bs.data
scoreboard players operation $hitbox.height bs.out *= #hitbox.get_entity.size bs.data
