# villager group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute at @s positioned ~ ~.5 ~ store result score #hitbox.is_sleeping bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.width bs.out 600
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.height bs.out 1950
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.width bs.out 300
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.height bs.out 975
execute if score #hitbox.is_sleeping bs.data matches 1 run scoreboard players set $hitbox.width bs.out 200
execute if score #hitbox.is_sleeping bs.data matches 1 run scoreboard players set $hitbox.height bs.out 200
