execute store result score #tmp bs.random run data get storage bs:out random.noise[0][0] 100
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 0..25 run setblock ~ ~ ~ sand
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 0..25 run setblock ~ ~1 ~ water
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 26..38 run setblock ~ ~2 ~ grass_block
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 39..50 run setblock ~ ~3 ~ grass_block
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 51..57 run setblock ~ ~4 ~ stone
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 58..64 run setblock ~ ~5 ~ stone
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 65..70 run setblock ~ ~6 ~ stone
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 71..75 run setblock ~ ~7 ~ stone
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 76..88 run setblock ~ ~8 ~ grass_block
execute at @e[tag=bs.random.test] if score #tmp bs.random matches 88..100 run setblock ~ ~9 ~ grass_block
execute as @e[tag=bs.random.test] at @s run tp ~1 ~ ~
data remove storage bs:out random.noise[0][0]
data merge storage bs:random {tmp2:{width:0}}
execute store result storage bs:random tmp2.width int 1.0 run scoreboard players get #width bs.random
execute as @e[tag=bs.random.test] at @s unless data storage bs:out random.noise[0][0] run function bs.random:test/test_tp with storage bs:random tmp2
execute as @e[tag=bs.random.test] at @s unless data storage bs:out random.noise[0][0] run tp ~ ~ ~1
execute if data storage bs:out random.noise[0][0] run function bs.random:test/test_noise_loop
data remove storage bs:out random.noise[0]