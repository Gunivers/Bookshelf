# if E = 59
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.00000000186264514923095703125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 1 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 58
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.0000000037252902984619140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 1 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 57
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.000000007450580596923828125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.5 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 56
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.00000001490116119384765625
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.5 run scoreboard players get #math.sqrt.out bs.data
