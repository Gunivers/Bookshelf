# White noise 2d generates the right number of random values
# @batch bs.random

function #bs.random:white_noise_mat_2d {width:0,height:8}
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_2d[]
assert score #n bs.ctx matches 0

function #bs.random:white_noise_mat_2d {width:8,height:0}
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_2d[]
assert score #n bs.ctx matches 0

function #bs.random:white_noise_mat_2d {width:3,height:2}
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_2d[]
assert score #n bs.ctx matches 2
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_2d[0][]
assert score #n bs.ctx matches 3
execute store result score #n bs.ctx if data storage bs:out random.white_noise_mat_2d[1][]
assert score #n bs.ctx matches 3

execute store result score #0 bs.ctx run data get storage bs:out random.white_noise_mat_2d[0][0] 1000
execute store result score #1 bs.ctx run data get storage bs:out random.white_noise_mat_2d[0][1] 1000
execute store result score #2 bs.ctx run data get storage bs:out random.white_noise_mat_2d[0][2] 1000
execute store result score #3 bs.ctx run data get storage bs:out random.white_noise_mat_2d[1][0] 1000
execute store result score #4 bs.ctx run data get storage bs:out random.white_noise_mat_2d[1][1] 1000
execute store result score #5 bs.ctx run data get storage bs:out random.white_noise_mat_2d[1][2] 1000
execute if score #0 bs.ctx = #1 bs.ctx if score #1 bs.ctx = #2 bs.ctx if score #2 bs.ctx = #3 bs.ctx if score #3 bs.ctx = #4 bs.ctx if score #4 bs.ctx = #5 bs.ctx run fail "White noise should not always return the same value"
