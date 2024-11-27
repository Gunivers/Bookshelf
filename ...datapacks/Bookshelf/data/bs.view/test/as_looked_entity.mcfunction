# Callback is run as the looked at entity
# @batch bs.view
# @dummy

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
summon minecraft:armor_stand ~.5 ~ ~1.5 {Tags:["bs.view.is_lookable"],NoGravity:1b}
function #bs.view:as_looked_entity {run:"tag @s add bs.found"}
assert entity @e[type=minecraft:armor_stand,tag=bs.found] inside
