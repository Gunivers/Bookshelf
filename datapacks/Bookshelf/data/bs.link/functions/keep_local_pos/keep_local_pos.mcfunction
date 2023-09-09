scoreboard players operation $id.suid.check bs.in = @s bs.link.to

execute store result storage bs:data link.keep_local_pos.x double 0.001 run scoreboard players get @s bs.link.lx
execute store result storage bs:data link.keep_local_pos.y double 0.001 run scoreboard players get @s bs.link.ly
execute store result storage bs:data link.keep_local_pos.z double 0.001 run scoreboard players get @s bs.link.lz

execute at @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function bs.link:keep_local_pos/apply with storage bs:data link.keep_local_pos
