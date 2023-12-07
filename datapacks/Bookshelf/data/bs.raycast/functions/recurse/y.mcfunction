scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uy bs.data matches 1.. positioned ~ ~1 ~ run return run function bs.raycast:recurse/next with storage bs:in raycast
execute if score #raycast.uy bs.data matches ..-1 positioned ~ ~-1 ~ run return run function bs.raycast:recurse/next with storage bs:in raycast
