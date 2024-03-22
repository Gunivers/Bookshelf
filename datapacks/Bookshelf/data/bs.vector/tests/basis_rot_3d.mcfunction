# Convert canonical to local coordinates
# @batch bs.vector

scoreboard players set $vector.basis_rot_3d.pos.0 bs.in 577
scoreboard players set $vector.basis_rot_3d.pos.1 bs.in 577
scoreboard players set $vector.basis_rot_3d.pos.2 bs.in 577
scoreboard players set $vector.basis_rot_3d.rot.0 bs.in -45000
scoreboard players set $vector.basis_rot_3d.rot.1 bs.in -35265

function #bs.vector:basis_rot_3d {scaling:1000}

assert score $vector.basis_rot_3d.0 bs.out matches -1..1
assert score $vector.basis_rot_3d.1 bs.out matches -1..1
assert score $vector.basis_rot_3d.2 bs.out matches 999..1001
