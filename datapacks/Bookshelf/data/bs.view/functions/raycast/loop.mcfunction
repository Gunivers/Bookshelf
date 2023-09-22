scoreboard players operation #view.raycast.shortest bs.data = #view.raycast.lx bs.data
scoreboard players operation #view.raycast.shortest bs.data < #view.raycast.ly bs.data
scoreboard players operation #view.raycast.shortest bs.data < #view.raycast.lz bs.data

execute unless block ~ ~ ~ #bs.view:air run function bs.view:raycast/block/check

execute if score #view.raycast.lx bs.data = #view.raycast.shortest bs.data run data modify storage bs:data view.raycast.step set from storage bs:data view.raycast.step_x
execute if score #view.raycast.ly bs.data = #view.raycast.shortest bs.data run data modify storage bs:data view.raycast.step set from storage bs:data view.raycast.step_y
execute if score #view.raycast.lz bs.data = #view.raycast.shortest bs.data run data modify storage bs:data view.raycast.step set from storage bs:data view.raycast.step_z
execute if score #view.raycast.lx bs.data = #view.raycast.shortest bs.data run scoreboard players operation #view.raycast.lx bs.data += #view.raycast.dx bs.data
execute if score #view.raycast.ly bs.data = #view.raycast.shortest bs.data run scoreboard players operation #view.raycast.ly bs.data += #view.raycast.dy bs.data
execute if score #view.raycast.lz bs.data = #view.raycast.shortest bs.data run scoreboard players operation #view.raycast.lz bs.data += #view.raycast.dz bs.data

$execute unless score #view.raycast.shortest bs.data > $view.raycast.max_distance bs.in positioned ~$(x) ~$(y) ~$(z) run function bs.view:raycast/loop with storage bs:data view.raycast.step
