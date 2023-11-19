# rabbit group
execute at @s positioned ~ ~.4 ~ store result score #hitbox.get_entity.is_baby bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.width bs.out 400000
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.height bs.out 500000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.width bs.out 200000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.height bs.out 250000
