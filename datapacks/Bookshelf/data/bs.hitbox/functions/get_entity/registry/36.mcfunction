# llama group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run scoreboard players set @s bs.width 900
execute if score #success bs.data matches 0 run scoreboard players set @s bs.height 1870
execute if score #success bs.data matches 1 run scoreboard players set @s bs.width 450
execute if score #success bs.data matches 1 run scoreboard players set @s bs.height 935
