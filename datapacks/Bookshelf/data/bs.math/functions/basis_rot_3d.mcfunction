# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#basis_rot_3d
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# sincos(Theta)
scoreboard players operation $math.sincos.angle bs.in = $math.basis_rot_3d.h bs.in
function #bs.math:sincos
scoreboard players operation #math.basis_rot_3d.cos.h bs.data = $math.sincos.cos bs.out
scoreboard players operation #math.basis_rot_3d.sin.h bs.data = $math.sincos.sin bs.out

# sincos(Phi)
scoreboard players operation $math.sincos.angle bs.in = $math.basis_rot_3d.v bs.in
function #bs.math:sincos
scoreboard players operation #math.basis_rot_3d.cos.v bs.data = $math.sincos.cos bs.out
scoreboard players operation #math.basis_rot_3d.sin.v bs.data = $math.sincos.sin bs.out

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation $math.basis_rot_3d.x bs.out = $math.basis_rot_3d.z bs.in
scoreboard players operation $math.basis_rot_3d.x bs.out *= #math.basis_rot_3d.sin.h bs.data
scoreboard players operation #math.basis_rot_3d bs.data = $math.basis_rot_3d.x bs.in
scoreboard players operation #math.basis_rot_3d bs.data *= #math.basis_rot_3d.cos.h bs.data
scoreboard players operation $math.basis_rot_3d.x bs.out += #math.basis_rot_3d bs.data
scoreboard players operation $math.basis_rot_3d.x bs.out /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation $math.basis_rot_3d.y bs.out = $math.basis_rot_3d.z bs.in
scoreboard players operation $math.basis_rot_3d.y bs.out *= #math.basis_rot_3d.cos.h bs.data
scoreboard players operation #math.basis_rot_3d bs.data = $math.basis_rot_3d.x bs.in
scoreboard players operation #math.basis_rot_3d bs.data *= #math.basis_rot_3d.sin.h bs.data
scoreboard players operation $math.basis_rot_3d.y bs.out -= #math.basis_rot_3d bs.data
execute store result score $math.basis_rot_3d.z bs.out run scoreboard players operation $math.basis_rot_3d.y bs.out /= 1000 bs.const
scoreboard players operation $math.basis_rot_3d.y bs.out *= #math.basis_rot_3d.sin.v bs.data
scoreboard players operation #math.basis_rot_3d bs.data = $math.basis_rot_3d.y bs.in
scoreboard players operation #math.basis_rot_3d bs.data *= #math.basis_rot_3d.cos.v bs.data
scoreboard players operation $math.basis_rot_3d.y bs.out += #math.basis_rot_3d bs.data
scoreboard players operation $math.basis_rot_3d.y bs.out /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation $math.basis_rot_3d.z bs.out *= #math.basis_rot_3d.cos.v bs.data
scoreboard players operation #math.basis_rot_3d bs.data = $math.basis_rot_3d.y bs.in
scoreboard players operation #math.basis_rot_3d bs.data *= #math.basis_rot_3d.sin.v bs.data
scoreboard players operation $math.basis_rot_3d.z bs.out -= #math.basis_rot_3d bs.data
scoreboard players operation $math.basis_rot_3d.z bs.out /= 1000 bs.const
