# secant approximation (x - 1399957056)//79249+37416
execute store result score #math.sqrt.out bs.data store result score #math.sqrt.temp1 bs.data run scoreboard players operation #math.sqrt.temp2 bs.data = #math.sqrt.in bs.data
scoreboard players remove #math.sqrt.out bs.data 1399957056
scoreboard players operation #math.sqrt.out bs.data /= 79249 bs.const
scoreboard players add #math.sqrt.out bs.data 37416


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


# secant approximation (x-floor_sqrt(x)^2)/(((floor_sqrt(x)+1)^2)-floor_sqrt(x)^2)
# temp1 = floor_sqrt(x)^2; temp2 = (floor_sqrt(x)+1)^2
execute store result score #math.sqrt.temp1 bs.data run scoreboard players operation #math.sqrt.temp2 bs.data = #math.sqrt.out bs.data
scoreboard players operation #math.sqrt.temp1 bs.data *= #math.sqrt.temp1 bs.data
scoreboard players add #math.sqrt.temp2 bs.data 1
scoreboard players operation #math.sqrt.temp2 bs.data *= #math.sqrt.temp2 bs.data

# temp2 = (floor_sqrt(x)+1)^2 - floor_sqrt(x)^2
scoreboard players operation #math.sqrt.temp2 bs.data -= #math.sqrt.temp1 bs.data

# temp2 = 92681 if overflow
execute if score #math.sqrt.out bs.data matches 46340 run scoreboard players set #math.sqrt.temp2 bs.data 92681

# temp1 = (x-floor_sqrt(x)^2)/temp2
scoreboard players operation #math.sqrt.temp1 bs.data -= #math.sqrt.in bs.data
scoreboard players operation #math.sqrt.temp1 bs.data *= 8192 bs.const
scoreboard players operation #math.sqrt.temp1 bs.data /= #math.sqrt.temp2 bs.data


scoreboard players operation #math.sqrt.out bs.data *= 8192 bs.const
scoreboard players operation #math.sqrt.out bs.data -= #math.sqrt.temp1 bs.data
