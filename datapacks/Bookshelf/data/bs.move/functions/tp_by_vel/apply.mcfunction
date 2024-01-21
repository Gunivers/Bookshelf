$tp @s ~$(x) ~$(y) ~$(z)
execute unless data storage bs:in move{block_collision:0b,entity_collision:0b} run function bs.move:collision/handle/canonical
