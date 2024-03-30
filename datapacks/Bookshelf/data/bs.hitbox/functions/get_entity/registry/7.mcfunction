# bee group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.width bs.out 700
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.height bs.out 600
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.width bs.out 350
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.height bs.out 300
