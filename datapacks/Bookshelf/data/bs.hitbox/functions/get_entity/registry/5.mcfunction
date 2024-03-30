# axolotl group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.width bs.out 750
execute if score #success bs.data matches 0 run scoreboard players set $hitbox.height bs.out 420
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.width bs.out 375
execute if score #success bs.data matches 1 run scoreboard players set $hitbox.height bs.out 210
