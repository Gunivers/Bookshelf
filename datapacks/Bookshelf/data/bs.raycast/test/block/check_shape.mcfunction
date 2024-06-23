# Casting a ray through a composite shape behave as expected
# @batch bs.raycast

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
setblock ~ ~ ~ minecraft:oak_stairs[facing=east]
execute positioned ~1.5 ~ ~.5 facing ~-.5 ~.52 ~ run function #bs.raycast:run {with:{}}
execute unless data storage bs:out raycast.targeted_block run fail "Failed to detect a targeted block"
execute positioned ~-.5 ~ ~.5 facing ~.5 ~.52 ~ run function #bs.raycast:run {with:{}}
execute if data storage bs:out raycast.targeted_block run fail "Should not detect a targeted block"

setblock ~ ~ ~ minecraft:oak_stairs[facing=west]
execute positioned ~-.5 ~ ~.5 facing ~.5 ~.52 ~ run function #bs.raycast:run {with:{}}
execute unless data storage bs:out raycast.targeted_block run fail "Failed to detect a targeted block"
execute positioned ~1.5 ~ ~.5 facing ~-.5 ~.52 ~ run function #bs.raycast:run {with:{}}
execute if data storage bs:out raycast.targeted_block run fail "Should not detect a targeted block"
