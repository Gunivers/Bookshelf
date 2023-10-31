$execute unless block ~ ~ ~ $(ignored_blocks) run function bs.view:raycast/collision/check/block
$execute if score #view.raycast.target_entities bs.data matches 1.. as @e[type=!$(ignored_entities),tag=!bs.view.raycast.origin,dx=0] run function bs.view:raycast/collision/check/entity

# advance on the grid using the shortest length
scoreboard players operation #view.raycast.min_distance bs.data = #view.raycast.lx bs.data
scoreboard players operation #view.raycast.min_distance bs.data < #view.raycast.ly bs.data
scoreboard players operation #view.raycast.min_distance bs.data < #view.raycast.lz bs.data
execute if score #view.raycast.lx bs.data = #view.raycast.min_distance bs.data unless score #view.raycast.min_distance bs.data > #view.raycast.max_distance bs.data run function bs.view:raycast/recurse/x
execute if score #view.raycast.ly bs.data = #view.raycast.min_distance bs.data unless score #view.raycast.min_distance bs.data > #view.raycast.max_distance bs.data run function bs.view:raycast/recurse/y
execute if score #view.raycast.lz bs.data = #view.raycast.min_distance bs.data unless score #view.raycast.min_distance bs.data > #view.raycast.max_distance bs.data run function bs.view:raycast/recurse/z
