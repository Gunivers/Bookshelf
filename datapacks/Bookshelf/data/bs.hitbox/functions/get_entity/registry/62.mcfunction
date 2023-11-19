# warden group
execute at @s positioned ~ ~1.5 ~ store result score #hitbox.get_entity.is_digging bs.data unless entity @s[dx=0]
scoreboard players set $hitbox.width bs.out 900000
execute if score #hitbox.get_entity.is_digging bs.data matches 0 run scoreboard players set $hitbox.height bs.out 2900000
execute if score #hitbox.get_entity.is_digging bs.data matches 1 run scoreboard players set $hitbox.height bs.out 1000000
