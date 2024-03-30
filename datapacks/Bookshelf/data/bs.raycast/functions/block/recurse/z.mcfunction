# increment length by delta on z then move to the next block on the grid
scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
execute if score #raycast.uz bs.data matches 1.. positioned ~ ~ ~1 if loaded ~ ~ ~ run return run function bs.raycast:block/recurse/next with storage bs:data raycast
execute if score #raycast.uz bs.data matches ..-1 positioned ~ ~ ~-1 if loaded ~ ~ ~ run return run function bs.raycast:block/recurse/next with storage bs:data raycast
