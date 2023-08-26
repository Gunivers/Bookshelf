# secant approximation (x - 1399957056)//79249+37416
execute store result score #out bs.data store result score #temp1 bs.data run scoreboard players operation #temp2 bs.data = #in bs.data
scoreboard players remove #out bs.data 1399957056
scoreboard players operation #out bs.data /= 79249 bs.const
scoreboard players add #out bs.data 37416


# iter1
scoreboard players operation #temp1 bs.data /= #out bs.data
scoreboard players operation #out bs.data += #temp1 bs.data
scoreboard players operation #out bs.data /= 2 bs.const
# iter2
scoreboard players operation #temp2 bs.data /= #out bs.data
scoreboard players operation #out bs.data += #temp2 bs.data
execute store result score #check bs.data run scoreboard players operation #out bs.data /= 2 bs.const


# floor the result
scoreboard players operation #check bs.data *= #check bs.data
execute if score #check bs.data > #in bs.data run scoreboard players remove #out bs.data 1
execute if score #out bs.data matches 46341.. run scoreboard players set #out bs.data 46340


# secant approximation (x-floor_sqrt(x)^2)/(((floor_sqrt(x)+1)^2)-floor_sqrt(x)^2)
# temp1 = floor_sqrt(x)^2; temp2 = (floor_sqrt(x)+1)^2
execute store result score #temp1 bs.data run scoreboard players operation #temp2 bs.data = #out bs.data
scoreboard players operation #temp1 bs.data *= #temp1 bs.data
scoreboard players add #temp2 bs.data 1
scoreboard players operation #temp2 bs.data *= #temp2 bs.data

# temp2 = (floor_sqrt(x)+1)^2 - floor_sqrt(x)^2
scoreboard players operation #temp2 bs.data -= #temp1 bs.data

# temp2 = 92681 if overflow
execute if score #out bs.data matches 46340 run scoreboard players set #temp2 bs.data 92681

# temp1 = (x-floor_sqrt(x)^2)/temp2
scoreboard players operation #temp1 bs.data -= #in bs.data
scoreboard players operation #temp1 bs.data *= 8192 bs.const
scoreboard players operation #temp1 bs.data /= #temp2 bs.data

#
scoreboard players operation #out bs.data *= 8192 bs.const
scoreboard players operation #out bs.data -= #temp1 bs.data
