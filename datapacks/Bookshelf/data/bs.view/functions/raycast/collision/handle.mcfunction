# run callback at the hit position
data modify storage bs:data _ set value [0.0,0.0,0.0]
scoreboard players operation #view.raycast.ux bs.data *= #view.raycast.distance bs.data
scoreboard players operation #view.raycast.uy bs.data *= #view.raycast.distance bs.data
scoreboard players operation #view.raycast.uz bs.data *= #view.raycast.distance bs.data
scoreboard players operation #view.raycast.ux bs.data /= 1000 bs.const
scoreboard players operation #view.raycast.uy bs.data /= 1000 bs.const
scoreboard players operation #view.raycast.uz bs.data /= 1000 bs.const
scoreboard players operation #view.raycast.x bs.data += #view.raycast.ux bs.data
scoreboard players operation #view.raycast.y bs.data += #view.raycast.uy bs.data
scoreboard players operation #view.raycast.z bs.data += #view.raycast.uz bs.data
execute if entity @s[tag=bs.view.raycast.origin] run function bs.view:raycast/collision/clip
execute store result storage bs:data _[0] double 0.001 run scoreboard players get #view.raycast.x bs.data
execute store result storage bs:data _[1] double 0.001 run scoreboard players get #view.raycast.y bs.data
execute store result storage bs:data _[2] double 0.001 run scoreboard players get #view.raycast.z bs.data
data modify entity B5-0-0-0-1 Pos set from storage bs:data _
execute positioned as B5-0-0-0-1 run function bs.view:raycast/collision/run with storage bs:data view.raycast
tag @s remove bs.view.raycast.hit
