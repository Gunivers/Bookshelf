# White noise 1d generates the right number of random values
# @batch bs.random

function #bs.random:white_noise_mat_1d {length:0,with:{}}
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_1d[]
assert score #n bs.ctx matches 0

function #bs.random:white_noise_mat_1d {length:5,with:{}}
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_1d[]
assert score #n bs.ctx matches 5

execute store result score #0 bs.ctx run data get storage bs:out random.white_noise_mat_1d[0] 1000
execute store result score #1 bs.ctx run data get storage bs:out random.white_noise_mat_1d[1] 1000
execute store result score #2 bs.ctx run data get storage bs:out random.white_noise_mat_1d[2] 1000
execute store result score #3 bs.ctx run data get storage bs:out random.white_noise_mat_1d[3] 1000
execute store result score #4 bs.ctx run data get storage bs:out random.white_noise_mat_1d[4] 1000
execute store result score #5 bs.ctx run data get storage bs:out random.white_noise_mat_1d[5] 1000
execute if score #0 bs.ctx = #1 bs.ctx if score #1 bs.ctx = #2 bs.ctx if score #2 bs.ctx = #3 bs.ctx if score #3 bs.ctx = #4 bs.ctx if score #4 bs.ctx = #5 bs.ctx run fail "White noise should not always return the same value"
