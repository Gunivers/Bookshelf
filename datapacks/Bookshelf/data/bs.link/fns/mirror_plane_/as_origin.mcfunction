#execute at @s run function #bs.position:get_rot {scale:1000}
#execute store result storage bs:data link.mirror_plane.h double -0.001 run scoreboard players remove @s bs.rot.h 180000 minus ddif rot target
#execute store result storage bs:data link.mirror_plane.v double -0.001 run scoreboard players remove @s bs.rot.v 90000 minus ddif rot target

function #bs.position:get_distance_ata {scale:1000}
execute store result storage bs:data link.mirror_plane.d double 0.001 run scoreboard players get $position.get_distance_ata bs.out


function #bs.position:get_rot {scale:1000}
execute store result score #link.mirror_plane.rh bs.data store result score #link.mirror_plane.ph bs.data run scoreboard players operation @s bs.rot.h += @s bs.rot.h
execute store result score #link.mirror_plane.rv bs.data store result score #link.mirror_plane.pv bs.data run scoreboard players operation @s bs.rot.v += @s bs.rot.v

execute facing entity @s feet run function #bs.position:get_rot {scale:1000}
execute store result storage bs:data link.mirror_plane.ph double 0.001 run scoreboard players operation #link.mirror_plane.ph bs.data -= @s bs.rot.h
execute store result storage bs:data link.mirror_plane.pv double 0.001 run scoreboard players operation #link.mirror_plane.pv bs.data -= @s bs.rot.v

#execute rotated as @s rotated ~ ~ run function #bs.position:get_rot {scale:1000}
#execute store result storage bs:data link.mirror_plane.rh double 0.001 run scoreboard players operation #link.mirror_plane.rh bs.data -= @s bs.rot.h
#execute store result storage bs:data link.mirror_plane.rv double 0.001 run scoreboard players operation #link.mirror_plane.rv bs.data -= @s bs.rot.v
