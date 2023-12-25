$tp @s ^$(x) ^$(y) ^$(z)
execute if score $move.block_collision bs.in matches 0 if score $move.entity_collision bs.in matches 0 run return 0
function bs.move:collision/handle_local
