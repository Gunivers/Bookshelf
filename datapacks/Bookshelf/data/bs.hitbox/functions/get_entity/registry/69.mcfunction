# villager group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute at @s positioned ~ ~.5 ~ store result score #hitbox.is_sleeping bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 0 run scoreboard players set @s bs.width 600
execute if score #success bs.data matches 0 run scoreboard players set @s bs.height 1950
execute if score #success bs.data matches 1 run scoreboard players set @s bs.width 300
execute if score #success bs.data matches 1 run scoreboard players set @s bs.height 975
execute if score #hitbox.is_sleeping bs.data matches 1 run scoreboard players set @s bs.width 200
execute if score #hitbox.is_sleeping bs.data matches 1 run scoreboard players set @s bs.height 200
