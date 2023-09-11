# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#update-link
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

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

scoreboard players operation $math.basis_rot_3d.x bs.in = @s bs.link.rx
scoreboard players operation $math.basis_rot_3d.y bs.in = @s bs.link.ry
scoreboard players operation $math.basis_rot_3d.z bs.in = @s bs.link.rz
execute store result score $math.basis_rot_3d.h bs.in run scoreboard players operation @s bs.rot.h /= 10 bs.const
execute store result score $math.basis_rot_3d.v bs.in run scoreboard players operation @s bs.rot.v /= 10 bs.const

function #bs.math:basis_rot_3d

scoreboard players operation @s bs.link.lx = $math.basis_rot_3d.x bs.out
scoreboard players operation @s bs.link.ly = $math.basis_rot_3d.y bs.out
scoreboard players operation @s bs.link.lz = $math.basis_rot_3d.z bs.out
