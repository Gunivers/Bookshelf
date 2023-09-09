# secant approximation x//79249+19750
execute store result score #math.sqrt.out bs.data store result score #math.sqrt.temp1 bs.data run scoreboard players operation #math.sqrt.temp2 bs.data = #math.sqrt.in bs.data
scoreboard players operation #math.sqrt.out bs.data /= 79249 bs.const
scoreboard players add #math.sqrt.out bs.data 19750

# iter1
scoreboard players operation #math.sqrt.temp1 bs.data /= #math.sqrt.out bs.data
scoreboard players operation #math.sqrt.out bs.data += #math.sqrt.temp1 bs.data
scoreboard players operation #math.sqrt.out bs.data /= 2 bs.const
# iter2
scoreboard players operation #math.sqrt.temp2 bs.data /= #math.sqrt.out bs.data
scoreboard players operation #math.sqrt.out bs.data += #math.sqrt.temp2 bs.data
execute store result score #math.sqrt.calc_check bs.data run scoreboard players operation #math.sqrt.out bs.data /= 2 bs.const

# floor the result
scoreboard players operation #math.sqrt.calc_check bs.data *= #math.sqrt.calc_check bs.data
execute if score #math.sqrt.calc_check bs.data > #math.sqrt.in bs.data run scoreboard players remove #math.sqrt.out bs.data 1
execute if score #math.sqrt.out bs.data matches 46341.. run scoreboard players set #math.sqrt.out bs.data 46340

# secant approximation (floor_sqrt(x)^2-x)/(2*floor_sqrt(x)+1)
# temp1 = floor_sqrt(x)^2; temp2 = 2*floor_sqrt(x)+1
execute store result score #math.sqrt.temp1 bs.data run scoreboard players operation #math.sqrt.temp2 bs.data = #math.sqrt.out bs.data
scoreboard players operation #math.sqrt.temp1 bs.data *= #math.sqrt.temp1 bs.data
scoreboard players operation #math.sqrt.temp2 bs.data *= 2 bs.const
scoreboard players add #math.sqrt.temp2 bs.data 1

# temp1 = (floor_sqrt(x)^2-x)/temp2
scoreboard players operation #math.sqrt.temp1 bs.data -= #math.sqrt.in bs.data
scoreboard players operation #math.sqrt.temp1 bs.data *= 16384 bs.const
scoreboard players operation #math.sqrt.temp1 bs.data /= #math.sqrt.temp2 bs.data


scoreboard players operation #math.sqrt.out bs.data *= 16384 bs.const
execute store result storage bs:out math.sqrt int 1.4142135623730951454746218587388284504413604736328125 run scoreboard players operation #math.sqrt.out bs.data -= #math.sqrt.temp1 bs.data
execute store result score #math.sqrt.out bs.data run data get storage bs:out math.sqrt