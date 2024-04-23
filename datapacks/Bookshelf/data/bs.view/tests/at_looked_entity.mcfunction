# Callback is run at the looked at entity
# @batch bs.view
# @dummy

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
summon minecraft:armor_stand ~.5 ~ ~1.5 {Tags:["bs.view.is_lookable"],NoGravity:1b}
function #bs.view:at_looked_entity {run:"tag @e[distance=0] add found"}
assert entity @e[type=minecraft:armor_stand,tag=found] inside
