# Convert canonical to local coordinates
# @batch bs.position
# @dummy

scoreboard players set @s bs.pos.x 0
scoreboard players set @s bs.pos.y 0
scoreboard players set @s bs.pos.z 1000

execute rotated -45 -35.265 run function #bs.position:local_to_canonical

assert score @s bs.pos.x matches 576..578
assert score @s bs.pos.y matches 576..578
assert score @s bs.pos.z matches 576..578
