$tp @s ~$(x) ~$(y) ~$(z)
execute if score #move.bc bs.data matches 0 if score #move.ec bs.data matches 0 run return 0
function bs.move:collision/handle/canonical
