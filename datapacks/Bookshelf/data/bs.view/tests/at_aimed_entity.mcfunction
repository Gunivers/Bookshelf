# Callback is run at the targeted entity
# @batch bs.view
# @dummy

summon minecraft:armor_stand ~.5 ~ ~1.5 {Tags:["bs.raycast.is_solid"],NoGravity:1b}
function #bs.view:at_aimed_entity {run:"tag @e[distance=0] add found"}
assert entity @e[type=minecraft:armor_stand,tag=found] inside
