scoreboard players operation #view.raycast.ly bs.data += #view.raycast.dy bs.data
execute if score #view.raycast.uy bs.data matches 1.. positioned ~ ~1 ~ run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
execute if score #view.raycast.uy bs.data matches ..-1 positioned ~ ~-1 ~ run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
