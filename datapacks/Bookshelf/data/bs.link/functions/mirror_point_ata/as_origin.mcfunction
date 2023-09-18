function #bs.position:get_distance_ata {scale:1000}
execute store result storage bs:data link.mirror_point_ata.d double -0.001 run scoreboard players get $position.get_distance_ata bs.out

execute store result score #link.mirror_ata.oh bs.data run data get entity @s Rotation[0] 1000
execute facing entity @s eyes run function #bs.position:get_rot_h {scale:1000}
scoreboard players operation #link.mirror_ata.oh bs.data -= @s bs.rot.h
execute store result storage bs:data link.mirror_point_ata.oh double 0.001 run scoreboard players remove #link.mirror_ata.oh bs.data 180000
execute store result storage bs:data link.mirror_point_ata.v double 0.001 run data get entity @s Rotation[1] -1000
