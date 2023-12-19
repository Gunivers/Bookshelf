$tp @s ~$(x) ~$(y) ~$(z)
execute if data storage bs:in move.on_collision run function bs.move:collision/handle with storage bs:in move
