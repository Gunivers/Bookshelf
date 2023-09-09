function #bs.position:get_rot {scale:1000}
scoreboard players operation #link.mirror_ata.h bs.data += @s bs.rot.h
scoreboard players operation #link.mirror_ata.v bs.data += @s bs.rot.v

scoreboard players operation $id.suid.check bs.in = @s bs.link.to
execute as @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function bs.link:mirror_ata/as_target


execute store result storage bs:data link.mirror_ata.v double 0.001 run scoreboard players operation #link.mirror_ata.v bs.data += @s bs.rot.v



function bs.link:mirror_ata/apply with storage bs:data link.mirror_ata
