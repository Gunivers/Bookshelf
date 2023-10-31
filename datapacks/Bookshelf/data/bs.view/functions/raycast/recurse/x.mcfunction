scoreboard players operation #view.raycast.lx bs.data += #view.raycast.dx bs.data
execute if score #view.raycast.ux bs.data matches 1.. positioned ~1 ~ ~ run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
execute if score #view.raycast.ux bs.data matches ..-1 positioned ~-1 ~ ~ run function bs.view:raycast/recurse/loop with storage bs:data view.raycast
