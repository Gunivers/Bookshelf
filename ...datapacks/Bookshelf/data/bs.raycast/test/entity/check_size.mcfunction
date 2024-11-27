# Casting a ray through an entity behave as expected
# @batch bs.raycast

summon minecraft:armor_stand ~.5 ~ ~.5
execute positioned ~1.5 ~1 ~.5 facing ~-.76 ~ ~.24 run function #bs.raycast:run {with:{blocks:false,entities:true}}
execute unless data storage bs:out raycast.targeted_entity run fail "Failed to detect a targeted entity"
execute positioned ~-.5 ~1 ~.5 facing ~.76 ~ ~-.24 run function #bs.raycast:run {with:{blocks:false,entities:true}}
execute unless data storage bs:out raycast.targeted_entity run fail "Failed to detect a targeted entity"
