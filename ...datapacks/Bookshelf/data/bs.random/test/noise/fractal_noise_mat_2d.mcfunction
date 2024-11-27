# Fractal noise 2d generates the right number of random values
# @batch bs.random

function #bs.random:fractal_noise_mat_2d {width:0,height:8,with:{}}
execute store result score #n bs.ctx if data storage bs:out random.fractal_noise_mat_2d[]
assert score #n bs.ctx matches 0

function #bs.random:fractal_noise_mat_2d {width:8,height:0,with:{}}
execute store result score #n bs.ctx if data storage bs:out random.fractal_noise_mat_2d[]
assert score #n bs.ctx matches 0

function #bs.random:fractal_noise_mat_2d {width:3,height:2,with:{}}
execute store result score #n bs.ctx if data storage bs:out random.fractal_noise_mat_2d[]
assert score #n bs.ctx matches 2
execute store result score #n bs.ctx if data storage bs:out random.fractal_noise_mat_2d[0][]
assert score #n bs.ctx matches 3
execute store result score #n bs.ctx if data storage bs:out random.fractal_noise_mat_2d[1][]
assert score #n bs.ctx matches 3
