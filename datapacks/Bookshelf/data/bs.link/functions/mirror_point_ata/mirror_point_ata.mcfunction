scoreboard players operation $id.suid.check bs.in = @s bs.link.to
execute as @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function bs.link:mirror_point_ata/as_origin
execute facing entity @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] feet run function bs.link:mirror_point_ata/apply with storage bs:data link.mirror_point_ata
