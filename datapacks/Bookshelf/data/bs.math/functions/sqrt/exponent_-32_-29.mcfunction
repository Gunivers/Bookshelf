# if E = -29
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 288230376151711744
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000001136868377216160297393798828125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -30
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1152921504606846976
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000005684341886080801486968994140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -31
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1152921504606846976
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000005684341886080801486968994140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -32
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4611686018427387904
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000000000028421709430404007434844970703125 run scoreboard players get #math.sqrt.out bs.data