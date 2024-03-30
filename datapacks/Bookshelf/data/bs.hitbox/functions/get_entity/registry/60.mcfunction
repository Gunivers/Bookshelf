# turtle group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.width bs.out 1200
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.height bs.out 400
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.width bs.out 360
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.height bs.out 120
