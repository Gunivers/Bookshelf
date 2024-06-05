# increment length by delta on y then move to the next block on the grid
scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uy bs.data matches 1.. positioned ~ ~1 ~ run return run function bs.raycast:recurse/next with storage bs:data raycast
execute if score #raycast.uy bs.data matches ..-1 positioned ~ ~-1 ~ run return run function bs.raycast:recurse/next with storage bs:data raycast
