# Ray do not stop on ignored_entities
# @batch bs.raycast

summon minecraft:armor_stand ~.5 ~ ~.5
execute positioned ~.5 ~ ~-.5 run function #bs.raycast:run {with:{blocks:false,entities:true,ignored_entities:"minecraft:armor_stand"}}
execute if data storage bs:out raycast.targeted_entity run fail "Should not detect a targeted entity"
