# sniffer group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.width bs.out 1900
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.height bs.out 1750
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.width bs.out 950
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.height bs.out 875
execute if score #success bs.data matches 0 at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run scoreboard players remove $hitbox.height bs.out 400
execute if score #success bs.data matches 1 at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players remove $hitbox.height bs.out 400
