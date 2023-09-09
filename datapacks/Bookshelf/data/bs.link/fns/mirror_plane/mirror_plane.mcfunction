#data modify storage bs:data link.mirror_plane set value {x:$(x),y:$(y),z:$(z),h:$(h),v:$(v)}

scoreboard players operation $id.suid.check bs.in = @s bs.link.to
execute as @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function bs.link:mirror_plane/as_origin
execute rotated ~180 ~ run function bs.link:mirror_plane/apply with storage bs:data link.mirror_plane
