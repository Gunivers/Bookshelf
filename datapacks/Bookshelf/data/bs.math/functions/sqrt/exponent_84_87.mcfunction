# if E = 87
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000034694469519536141888238489627838134765625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 32768 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 86
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000001387778780781445675529539585113525390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 16384 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 85
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000001387778780781445675529539585113525390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 16384 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 84
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000055511151231257827021181583404541015625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 8192 run scoreboard players get #math.sqrt.out bs.data