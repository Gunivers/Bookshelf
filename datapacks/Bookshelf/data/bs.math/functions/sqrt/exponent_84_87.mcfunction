# if E = 87
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000006938893903907228377647697925567626953125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 23170 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 86
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000001387778780781445675529539585113525390625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 16384 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 85
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000277555756156289135105907917022705078125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 11585 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 84
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000055511151231257827021181583404541015625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 8192 run scoreboard players get #out bs.data