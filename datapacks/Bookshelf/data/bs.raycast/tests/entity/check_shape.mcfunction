# Casting a ray through an entity shape behave as expected
# @batch bs.raycast

summon minecraft:item_frame ~ ~ ~ {Facing:0}
execute positioned ~.5 ~.5 ~.5 facing ~ ~1 ~ run function #bs.raycast:run {with:{blocks:false,entities:true}}
execute unless data storage bs:out raycast.targeted_entity run fail "Failed to detect a targeted entity"

summon minecraft:item_frame ~ ~ ~ {Facing:1}
execute positioned ~.5 ~.5 ~.5 facing ~ ~-1 ~ run function #bs.raycast:run {with:{blocks:false,entities:true}}
execute unless data storage bs:out raycast.targeted_entity run fail "Failed to detect a targeted entity"
