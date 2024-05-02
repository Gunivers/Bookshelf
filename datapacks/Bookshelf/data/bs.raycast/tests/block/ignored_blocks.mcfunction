# Ray stop on non ignored_blocks
# @batch bs.raycast

setblock ~ ~ ~1 minecraft:light
execute positioned ~.5 ~ ~ run function #bs.raycast:run {with:{ignored_blocks:"minecraft:air"}}
execute unless data storage bs:out raycast.targeted_block run fail "Failed to detect a targeted block"
