# Callback is run as the targeted entity
# @batch bs.view
# @dummy

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
summon minecraft:armor_stand ~.5 ~ ~1.5 {Tags:["bs.raycast.is_solid"],NoGravity:1b}
function #bs.view:as_aimed_entity {run:"tag @s add found",with:{}}
assert entity @e[type=minecraft:armor_stand,tag=found] inside
