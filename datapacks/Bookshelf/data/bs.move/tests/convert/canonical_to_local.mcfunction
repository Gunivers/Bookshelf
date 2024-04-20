# Convert canonical to local coordinates
# @batch bs.move
# @dummy

scoreboard players set @s bs.vel.x 577
scoreboard players set @s bs.vel.y 577
scoreboard players set @s bs.vel.z 577

execute rotated -45 -35.265 run function #bs.move:canonical_to_local

assert score @s bs.vel.x matches -1..1
assert score @s bs.vel.y matches -1..1
assert score @s bs.vel.z matches 999..1001
