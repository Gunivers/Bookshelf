# phantom group
execute store result score #hitbox.get_entity.size bs.data run data get entity @s Size 15
scoreboard players add #hitbox.get_entity.size bs.data 100
scoreboard players set $hitbox.width bs.out 9000
scoreboard players set $hitbox.height bs.out 5000
scoreboard players operation $hitbox.width bs.out *= #hitbox.get_entity.size bs.data
scoreboard players operation $hitbox.height bs.out *= #hitbox.get_entity.size bs.data
