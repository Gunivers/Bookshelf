function #bs.position:get_relative_ata {scale:1000}
scoreboard players operation @s bs.link.rx = @s bs.pos.x
scoreboard players operation @s bs.link.ry = @s bs.pos.y
scoreboard players operation @s bs.link.rz = @s bs.pos.z

function #bs.position:canonical_to_local
scoreboard players operation @s bs.link.lx = @s bs.pos.x
scoreboard players operation @s bs.link.ly = @s bs.pos.y
scoreboard players operation @s bs.link.lz = @s bs.pos.z

execute store result score @s bs.link.lh run data get entity @s Rotation[0] 1000
execute store result score @s bs.link.lv run data get entity @s Rotation[1] 1000
function #bs.position:get_rot {scale:1000}
scoreboard players operation @s bs.link.lh -= @s bs.rot.h
scoreboard players operation @s bs.link.lv -= @s bs.rot.v
