# increment length by delta on x then move to the next block on the grid
scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.ux bs.data matches 1.. positioned ~1 ~ ~ run return run function bs.raycast:recurse/next with storage bs:data raycast
execute if score #raycast.ux bs.data matches ..-1 positioned ~-1 ~ ~ run return run function bs.raycast:recurse/next with storage bs:data raycast
