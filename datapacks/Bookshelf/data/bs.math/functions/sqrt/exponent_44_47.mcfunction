# if E = 47
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000003814697265625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.03125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 46
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000152587890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 45
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000152587890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 44
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00006103515625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0078125 run scoreboard players get #math.sqrt.out bs.data