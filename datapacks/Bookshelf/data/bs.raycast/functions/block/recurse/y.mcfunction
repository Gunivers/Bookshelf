# increment length by delta on y then move to the next block on the grid
scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uy bs.data matches 1.. positioned ~ ~1 ~ if loaded ~ ~ ~ run return run function bs.raycast:block/recurse/next with storage bs:in raycast
execute if score #raycast.uy bs.data matches ..-1 positioned ~ ~-1 ~ if loaded ~ ~ ~ run return run function bs.raycast:block/recurse/next with storage bs:in raycast
