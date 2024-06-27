# White noise 1d generates the right number of random values
# @batch bs.random

function #bs.random:white_noise_1d {length:0}
execute store result score #result bs.data if data storage bs:out random.white_noise_1d[]
assert score #result bs.data matches 0

function #bs.random:white_noise_1d {length:5}
execute store result score #result bs.data if data storage bs:out random.white_noise_1d[]
assert score #result bs.data matches 5

execute store result score #packtest.0 bs.data run data get storage bs:out random.white_noise_1d[0] 1000
execute store result score #packtest.1 bs.data run data get storage bs:out random.white_noise_1d[1] 1000
execute store result score #packtest.2 bs.data run data get storage bs:out random.white_noise_1d[2] 1000
execute store result score #packtest.3 bs.data run data get storage bs:out random.white_noise_1d[3] 1000
execute store result score #packtest.4 bs.data run data get storage bs:out random.white_noise_1d[4] 1000
execute store result score #packtest.5 bs.data run data get storage bs:out random.white_noise_1d[5] 1000
execute if score #packtest.0 bs.data = #packtest.1 bs.data if score #packtest.1 bs.data = #packtest.2 bs.data if score #packtest.2 bs.data = #packtest.3 bs.data if score #packtest.3 bs.data = #packtest.4 bs.data if score #packtest.4 bs.data = #packtest.5 bs.data run fail "White noise should not always return the same value"
