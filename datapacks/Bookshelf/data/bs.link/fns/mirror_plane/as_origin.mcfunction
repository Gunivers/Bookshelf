function #bs.position:get_distance_ata {scale:1000}
execute store result storage bs:data link.mirror_plane.d double 0.001 run scoreboard players get $position.get_distance_ata bs.out

execute facing entity @s feet run function #bs.position:get_rot {scale:1000}
execute store result storage bs:data link.mirror_plane.h double -0.001 run scoreboard players get @s bs.rot.h
execute store result storage bs:data link.mirror_plane.v double 0.001 run scoreboard players get @s bs.rot.v




#function #bs.position:get_rot {scale:1000}
#scoreboard players operation #link.mirror_plane.v bs.data = @s bs.rot.v



#scoreboard players operation #link.mirror_plane.h bs.data -= @s bs.rot.h
#scoreboard players operation #link.mirror_plane.v bs.data -= @s bs.rot.v
#execute unless score #link.mirror_plane.v bs.data matches -90000..90000 run function bs.link:mirror_plane/normalize_rot

#execute store result storage bs:data link.mirror_plane.h double 0.001 run scoreboard players get #link.mirror_plane.h bs.data
#execute store result storage bs:data link.mirror_plane.v double 0.001 run scoreboard players get #link.mirror_plane.v bs.data

