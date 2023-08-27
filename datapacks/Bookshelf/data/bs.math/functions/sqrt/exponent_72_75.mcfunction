
# if E = 75
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000028421709430404007434844970703125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 362 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 74
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000005684341886080801486968994140625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 256 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 73
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000001136868377216160297393798828125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 181 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 72
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000227373675443232059478759765625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 128 run scoreboard players get #out bs.data
