# Convert canonical to local coordinates
# @batch bs.position
# @dummy

scoreboard players set @s bs.pos.x 577
scoreboard players set @s bs.pos.y 577
scoreboard players set @s bs.pos.z 577

execute rotated -45 -35.265 run function #bs.position:canonical_to_local

assert score @s bs.pos.x matches -1..1
assert score @s bs.pos.y matches -1..1
assert score @s bs.pos.z matches 999..1001
