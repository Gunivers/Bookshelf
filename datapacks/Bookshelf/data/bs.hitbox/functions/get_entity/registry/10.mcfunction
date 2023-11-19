# camel group
execute at @s positioned ~ ~1 ~ store result score #hitbox.get_entity.is_sitting bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_sitting bs.data matches 0 at @s positioned ~ ~2 ~ store result score #hitbox.get_entity.is_baby bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_sitting bs.data matches 1 at @s positioned ~ ~.5 ~ store result score #hitbox.get_entity.is_baby bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.width bs.out 1700000
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.height bs.out 2375000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.width bs.out 765000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.height bs.out 1068750
execute if score #hitbox.get_entity.is_sitting bs.data matches 1 if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players remove $hitbox.height bs.out 1430000
execute if score #hitbox.get_entity.is_sitting bs.data matches 1 if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players remove $hitbox.height bs.out 643500
