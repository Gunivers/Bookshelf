# if E = 55
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000001490116119384765625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.5 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 54
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000059604644775390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.25 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 53
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000059604644775390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.25 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 52
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000002384185791015625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.125 run scoreboard players get #math.sqrt.out bs.data