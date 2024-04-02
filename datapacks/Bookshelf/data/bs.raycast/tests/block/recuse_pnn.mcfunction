# Casting a ray facing [+x,-y,-z] behave as expected
# @batch bs.raycast

setblock ~1 ~ ~-1 minecraft:bookshelf
execute positioned ~.5 ~1 ~.5 facing ~.51 ~-1.01 ~-1.49 run function #bs.raycast:run {with:{}}
execute unless data storage bs:out raycast.targeted_block run fail "Failed to detect a targeted block"
execute positioned ~.5 ~1 ~.5 facing ~1.49 ~-1.01 ~-.51 run function #bs.raycast:run {with:{}}
execute unless data storage bs:out raycast.targeted_block run fail "Failed to detect a targeted block"
