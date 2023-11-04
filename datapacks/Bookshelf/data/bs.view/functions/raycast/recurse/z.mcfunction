scoreboard players operation #view.raycast.lz bs.data += #view.raycast.dz bs.data
execute if score #view.raycast.uz bs.data matches 1.. positioned ~ ~ ~1 run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
execute if score #view.raycast.uz bs.data matches ..-1 positioned ~ ~ ~-1 run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
