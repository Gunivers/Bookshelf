# Callback is run as the looked at entity
# @batch bs.view
# @dummy

summon minecraft:armor_stand ~.5 ~ ~1.5 {Tags:["bs.view.is_lookable"],NoGravity:1b}
function #bs.view:as_looked_entity {run:"tag @s add found"}
assert entity @e[type=minecraft:armor_stand,tag=found] inside
