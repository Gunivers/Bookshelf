execute at @s run function #bs.position:get_pos_and_rot {scale:1000}
scoreboard players operation @s bs.link.rx = @s bs.pos.x
scoreboard players operation @s bs.link.ry = @s bs.pos.y
scoreboard players operation @s bs.link.rz = @s bs.pos.z
scoreboard players operation @s bs.link.rh = @s bs.rot.h
scoreboard players operation @s bs.link.rv = @s bs.rot.v

scoreboard players operation $id.suid.check bs.in = @s bs.link.to
execute at @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function #bs.position:get_pos_and_rot {scale:1000}
scoreboard players operation @s bs.link.rx -= @s bs.pos.x
scoreboard players operation @s bs.link.ry -= @s bs.pos.y
scoreboard players operation @s bs.link.rz -= @s bs.pos.z
scoreboard players operation @s bs.link.rh -= @s bs.rot.h
scoreboard players operation @s bs.link.rv -= @s bs.rot.v
