# Fractal noise 2d generates the right values (hardcoded values based on seed)
# @batch bs.random

scoreboard players set $random.fractal_noise_2d.x bs.in 28656
scoreboard players set $random.fractal_noise_2d.y bs.in 1203
scoreboard players set $random.fractal_noise_2d.seed bs.in 5865932
scoreboard players set $random.fractal_noise_2d.octaves bs.in 4
scoreboard players set $random.fractal_noise_2d.persistence bs.in 500
scoreboard players set $random.fractal_noise_2d.lacunarity bs.in 2000
function #bs.random:fractal_noise_2d
assert score $random.fractal_noise_2d bs.out matches 89

scoreboard players set $random.fractal_noise_2d.x bs.in 15589
scoreboard players set $random.fractal_noise_2d.y bs.in 812
scoreboard players set $random.fractal_noise_2d.seed bs.in 57678
scoreboard players set $random.fractal_noise_2d.octaves bs.in 2
scoreboard players set $random.fractal_noise_2d.persistence bs.in 700
scoreboard players set $random.fractal_noise_2d.lacunarity bs.in 1500
function #bs.random:fractal_noise_2d
assert score $random.fractal_noise_2d bs.out matches 264

scoreboard players set $random.fractal_noise_2d.x bs.in 420
scoreboard players set $random.fractal_noise_2d.y bs.in 5123
scoreboard players set $random.fractal_noise_2d.seed bs.in 1
scoreboard players set $random.fractal_noise_2d.octaves bs.in 6
scoreboard players set $random.fractal_noise_2d.persistence bs.in 200
scoreboard players set $random.fractal_noise_2d.lacunarity bs.in 2500
function #bs.random:fractal_noise_2d
assert score $random.fractal_noise_2d bs.out matches -406

scoreboard players set $random.fractal_noise_2d.x bs.in 1000
scoreboard players set $random.fractal_noise_2d.y bs.in 1000
scoreboard players set $random.fractal_noise_2d.seed bs.in 123456789
scoreboard players set $random.fractal_noise_2d.octaves bs.in 5
scoreboard players set $random.fractal_noise_2d.persistence bs.in 600
scoreboard players set $random.fractal_noise_2d.lacunarity bs.in 1900
function #bs.random:fractal_noise_2d
assert score $random.fractal_noise_2d bs.out matches -133
