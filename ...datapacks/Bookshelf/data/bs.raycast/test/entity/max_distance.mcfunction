# Ray stop at max_distance
# @batch bs.raycast

summon minecraft:interaction ~.5 ~ ~1.5 {width:1f,height:1f}
execute positioned ~.5 ~ ~ run function #bs.raycast:run {with:{blocks:false,entities:true,max_distance:1}}
execute unless data storage bs:out raycast.targeted_entity run fail "Failed to detect a targeted entity"
execute positioned ~.5 ~ ~ run function #bs.raycast:run {with:{blocks:false,entities:true,max_distance:.9}}
execute if data storage bs:out raycast.targeted_entity run fail "Should not detect a targeted entity"
