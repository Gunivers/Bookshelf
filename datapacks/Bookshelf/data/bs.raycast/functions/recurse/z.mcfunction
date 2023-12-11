scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
execute if score #raycast.uz bs.data matches 1.. positioned ~ ~ ~1 run return run function bs.raycast:recurse/next with storage bs:in raycast
execute if score #raycast.uz bs.data matches ..-1 positioned ~ ~ ~-1 run return run function bs.raycast:recurse/next with storage bs:in raycast
