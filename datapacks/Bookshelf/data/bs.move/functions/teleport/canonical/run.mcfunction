$tp @s ~$(x) ~$(y) ~$(z)

scoreboard players set #move.is_local bs.data 0
execute unless data storage bs:data move{blocks:0b,entities:0b} run function bs.move:collision/handle
