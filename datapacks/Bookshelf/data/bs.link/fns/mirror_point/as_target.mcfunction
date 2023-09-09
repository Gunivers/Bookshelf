
execute store result score #link.mirror_ata.h bs.data run data get entity @s Rotation[0] -1000
execute store result score #link.mirror_ata.v bs.data run data get entity @s Rotation[1] -1000
execute store result storage bs:data link.mirror_ata.h double 0.001 run scoreboard players operation #link.mirror_ata.h bs.data += @s bs.rot.h
execute store result storage bs:data link.mirror_ata.v double 0.001 run scoreboard players operation #link.mirror_ata.v bs.data += @s bs.rot.v

function #bs.position:get_distance_ata {scale:1000}
execute store result storage bs:data link.mirror_ata.d double 0.001 run scoreboard players get $position.get_distance_ata bs.out
