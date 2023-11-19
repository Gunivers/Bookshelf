# sniffer group
execute at @s positioned ~ ~1 ~ store result score #hitbox.get_entity.is_baby bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.width bs.out 1900000
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.height bs.out 1750000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.width bs.out 950000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.height bs.out 875000
execute if score #hitbox.get_entity.is_baby bs.data matches 0 at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run scoreboard players remove $hitbox.height bs.out 400000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players remove $hitbox.height bs.out 400000
