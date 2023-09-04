# if E = 7
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4194304
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000298023223876953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 6
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 16777216
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000001490116119384765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 5
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 16777216
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000001490116119384765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 4
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 67108864
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000007450580596923828125 run scoreboard players get #math.sqrt.out bs.data