# goat group
execute at @s positioned ~ ~.8 ~ store result score #hitbox.get_entity.is_baby bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_baby bs.data matches 0 at @s positioned ~ ~1 ~ store result score #hitbox.get_entity.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_baby bs.data matches 1 at @s positioned ~ ~.5 ~ store result score #hitbox.get_entity.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_long_jumping bs.data matches 0 run scoreboard players set $hitbox.width bs.out 900000
execute if score #hitbox.get_entity.is_long_jumping bs.data matches 0 run scoreboard players set $hitbox.height bs.out 1300000
execute if score #hitbox.get_entity.is_long_jumping bs.data matches 1 run scoreboard players set $hitbox.width bs.out 630000
execute if score #hitbox.get_entity.is_long_jumping bs.data matches 1 run scoreboard players set $hitbox.height bs.out 910000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players operation $hitbox.width bs.out /= 2 bs.const
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players operation $hitbox.height bs.out /= 2 bs.const
