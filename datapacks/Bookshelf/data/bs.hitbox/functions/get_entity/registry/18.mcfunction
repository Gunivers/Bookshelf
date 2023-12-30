# donkey group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run scoreboard players set @s bs.width 1396
execute if score #success bs.data matches 0 run scoreboard players set @s bs.height 1500
execute if score #success bs.data matches 1 run scoreboard players set @s bs.width 698
execute if score #success bs.data matches 1 run scoreboard players set @s bs.height 750
