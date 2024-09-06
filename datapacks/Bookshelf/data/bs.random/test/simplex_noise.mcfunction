# Simplex noise 2d generates the right values (hardcoded values based on seed)
# @batch bs.random

scoreboard players set $random.simplex_noise.x bs.in 28656
scoreboard players set $random.simplex_noise.y bs.in 1203
scoreboard players set $random.simplex_noise.seed bs.in 5865932
function #bs.random:simplex_noise
assert score $random.simplex_noise bs.out matches -444

scoreboard players set $random.simplex_noise.x bs.in 15589
scoreboard players set $random.simplex_noise.y bs.in 812
scoreboard players set $random.simplex_noise.seed bs.in -57678
function #bs.random:simplex_noise
assert score $random.simplex_noise bs.out matches 151

scoreboard players set $random.simplex_noise.x bs.in 420
scoreboard players set $random.simplex_noise.y bs.in 5123
scoreboard players set $random.simplex_noise.seed bs.in 1
function #bs.random:simplex_noise
assert score $random.simplex_noise bs.out matches 513

scoreboard players set $random.simplex_noise.x bs.in 1000
scoreboard players set $random.simplex_noise.y bs.in 1000
scoreboard players set $random.simplex_noise.seed bs.in 123456789
function #bs.random:simplex_noise
assert score $random.simplex_noise bs.out matches -933
