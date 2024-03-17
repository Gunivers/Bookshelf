# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#basis-rotation-3d
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.scaling bs.data $(scaling)
scoreboard players set #vector.dscale bs.data 1000000000
execute store result storage bs:ctx y double .000000001 run scoreboard players operation #vector.dscale bs.data /= #vector.scaling bs.data

# sincos(h: Phi) & sincos(v: Theta)
execute as B5-0-0-0-1 run function bs.vector:convert/basis_rot_3d/sincos with storage bs:ctx

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation $vector.basis_rot_3d.0 bs.out = $vector.basis_rot_3d.pos.2 bs.in
scoreboard players operation $vector.basis_rot_3d.0 bs.out *= #vector.sin.h bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.0 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.cos.h bs.data
scoreboard players operation $vector.basis_rot_3d.0 bs.out += #vector.basis_rot_3d bs.data
scoreboard players operation $vector.basis_rot_3d.0 bs.out /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation $vector.basis_rot_3d.1 bs.out = $vector.basis_rot_3d.pos.2 bs.in
scoreboard players operation $vector.basis_rot_3d.1 bs.out *= #vector.cos.h bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.0 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.sin.h bs.data
scoreboard players operation $vector.basis_rot_3d.1 bs.out -= #vector.basis_rot_3d bs.data
execute store result score $vector.basis_rot_3d.2 bs.out run scoreboard players operation $vector.basis_rot_3d.1 bs.out /= 1000 bs.const
scoreboard players operation $vector.basis_rot_3d.1 bs.out *= #vector.sin.v bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.1 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.cos.v bs.data
scoreboard players operation $vector.basis_rot_3d.1 bs.out += #vector.basis_rot_3d bs.data
scoreboard players operation $vector.basis_rot_3d.1 bs.out /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation $vector.basis_rot_3d.2 bs.out *= #vector.cos.v bs.data
scoreboard players operation #vector.basis_rot_3d bs.data = $vector.basis_rot_3d.pos.1 bs.in
scoreboard players operation #vector.basis_rot_3d bs.data *= #vector.sin.v bs.data
scoreboard players operation $vector.basis_rot_3d.2 bs.out -= #vector.basis_rot_3d bs.data
scoreboard players operation $vector.basis_rot_3d.2 bs.out /= 1000 bs.const
