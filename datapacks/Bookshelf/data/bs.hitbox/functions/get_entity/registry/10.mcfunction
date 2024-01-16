# camel group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute at @s positioned ~ ~1 ~ store result score #hitbox.is_sitting bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 0 run scoreboard players set @s bs.width 1700
execute if score #success bs.data matches 0 run scoreboard players set @s bs.height 2375
execute if score #success bs.data matches 1 run scoreboard players set @s bs.width 765
execute if score #success bs.data matches 1 run scoreboard players set @s bs.height 1069
execute if score #hitbox.is_sitting bs.data matches 1 if score #success bs.data matches 0 run scoreboard players remove @s bs.height 1430
execute if score #hitbox.is_sitting bs.data matches 1 if score #success bs.data matches 1 run scoreboard players remove @s bs.height 643
