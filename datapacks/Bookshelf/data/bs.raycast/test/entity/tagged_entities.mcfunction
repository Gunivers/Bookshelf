# Ray stop only on tagged entities
# @batch bs.raycast

summon minecraft:armor_stand ~.5 ~ ~.5
summon minecraft:armor_stand ~.5 ~ ~1.5 {UUID:[I;-1170214687,114379287,-1715952819,-561845151],Tags:["bs.packtest"]}
execute positioned ~.5 ~ ~-.5 run function #bs.raycast:run {with:{blocks:false,entities:"bs.packtest"}}
assert data storage bs:out raycast{targeted_entity:[I;-1170214687,114379287,-1715952819,-561845151]}
