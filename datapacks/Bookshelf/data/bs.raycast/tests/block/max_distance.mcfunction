# Ray stop at max_distance
# @batch bs.raycast

setblock ~ ~ ~1 minecraft:bookshelf
execute positioned ~.5 ~ ~ run function #bs.raycast:run {with:{max_distance:1}}
execute unless data storage bs:out raycast.targeted_block run fail "Failed to detect a targeted block"
execute positioned ~.5 ~ ~ run function #bs.raycast:run {with:{max_distance:.9}}
execute if data storage bs:out raycast.targeted_block run fail "Should not detect a targeted block"
