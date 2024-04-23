# Callback is run at the hit point
# @batch bs.view
# @dummy

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
setblock ~ ~1 ~1 minecraft:bookshelf
function #bs.view:at_aimed_point {run:"summon minecraft:marker ~ ~ ~",with:{}}
execute at @s anchored eyes positioned ^ ^ ^.5 run assert entity @e[type=minecraft:marker,distance=..0.1]
