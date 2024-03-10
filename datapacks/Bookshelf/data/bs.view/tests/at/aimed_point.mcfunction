# Callback is run at the hit point
# @batch bs.view
# @dummy

setblock ~ ~1 ~1 minecraft:bookshelf
function #bs.view:at_aimed_point {run:"summon minecraft:marker ~ ~ ~ {UUID:[181,0,0,0]}"}
execute store success score #success bs.data run data modify entity B5-0-0-0-0 Pos set from storage bs:out raycast.hit_point
assert score #success bs.data matches 0
