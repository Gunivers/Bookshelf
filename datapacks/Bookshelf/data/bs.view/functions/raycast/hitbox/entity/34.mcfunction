# item_frame group
execute store result score #view.raycast.entity.facing bs.data run data get entity @s Facing
execute if score #view.raycast.entity.facing bs.data matches 0 run data modify storage bs:_ hitbox set value [[2.0, 14.46875, 2.0, 14.0, 16.0, 14.0]]
execute if score #view.raycast.entity.facing bs.data matches 1 run data modify storage bs:_ hitbox set value [[2.0, 0.0, 2.0, 14.0, 1.53125, 14.0]]
execute if score #view.raycast.entity.facing bs.data matches 2 run data modify storage bs:_ hitbox set value [[2.0, 2.0, 14.46875, 14.0, 14.0, 16.0]]
execute if score #view.raycast.entity.facing bs.data matches 3 run data modify storage bs:_ hitbox set value [[2.0, 2.0, 0.0, 14.0, 14.0, 1.53125]]
execute if score #view.raycast.entity.facing bs.data matches 4 run data modify storage bs:_ hitbox set value [[14.46875, 2.0, 2.0, 16.0, 14.0, 14.0]]
execute if score #view.raycast.entity.facing bs.data matches 5 run data modify storage bs:_ hitbox set value [[0.0, 2.0, 2.0, 1.53125, 14.0, 14.0]]
