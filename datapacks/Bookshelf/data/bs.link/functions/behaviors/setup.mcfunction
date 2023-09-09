scoreboard players operation $id.suid.check bs.in = @s bs.link.to
execute at @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function #bs.position:get_pos_and_rot {scale:1000}

scoreboard players operation #link.origin.x bs.data = @s bs.pos.x
scoreboard players operation #link.origin.y bs.data = @s bs.pos.y
scoreboard players operation #link.origin.z bs.data = @s bs.pos.z
scoreboard players operation #link.origin.h bs.data = @s bs.rot.h
scoreboard players operation #link.origin.v bs.data = @s bs.rot.v

execute store result score @s bs.pos.x run data get entity @s Pos[0] 1000
execute store result score @s bs.pos.y run data get entity @s Pos[1] 1000
execute store result score @s bs.pos.z run data get entity @s Pos[2] 1000
execute store result score @s bs.rot.h run data get entity @s Rotation[0] 1000
execute store result score @s bs.rot.v run data get entity @s Rotation[1] 1000
