# painting group
execute store result score #view.raycast.entity.facing bs.data run data get entity @s facing
execute if score #view.raycast.entity.facing bs.data matches 0 run data modify storage bs:data _ set value [[0, 0, 0, 16, 16, 1]]
execute if score #view.raycast.entity.facing bs.data matches 1 run data modify storage bs:data _ set value [[15, 0, 0, 16, 16, 16]]
execute if score #view.raycast.entity.facing bs.data matches 2 run data modify storage bs:data _ set value [[0, 0, 15, 16, 16, 16]]
execute if score #view.raycast.entity.facing bs.data matches 3 run data modify storage bs:data _ set value [[0, 0, 0, 1, 16, 16]]
