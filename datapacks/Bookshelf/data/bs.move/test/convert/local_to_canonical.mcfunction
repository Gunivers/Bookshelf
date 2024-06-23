# Convert canonical to local coordinates
# @batch bs.move
# @dummy

scoreboard players set @s bs.vel.x 0
scoreboard players set @s bs.vel.y 0
scoreboard players set @s bs.vel.z 1000

execute rotated -45 -35.265 run function #bs.move:local_to_canonical

assert score @s bs.vel.x matches 576..578
assert score @s bs.vel.y matches 576..578
assert score @s bs.vel.z matches 576..578
