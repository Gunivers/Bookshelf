execute store result score #tmp bs.random run data get storage bs:out random.noise[0][0] 100
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 0..25 run setblock ~ ~ ~ sand
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 0..25 run setblock ~ ~1 ~ water
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 26..50 run setblock ~ ~1 ~ grass_block
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 51..75 run setblock ~ ~2 ~ stone
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 75..100 run setblock ~ ~3 ~ grass_block
execute as @e[tag=bs.random.test] at @s run tp ~1 ~ ~
data remove storage bs:out random.noise[0][0]
execute as @e[tag=bs.random.test] at @s unless data storage bs:out random.noise[0][0] run tp ~-16 ~ ~1
execute if data storage bs:out random.noise[0][0] run function bs.random:test/test_noise_loop