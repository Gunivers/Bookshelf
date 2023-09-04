# if E = -1
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1073741824
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000186264514923095703125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -2
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4294967296
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000931322574615478515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -3
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4294967296
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000931322574615478515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -4
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 17179869184
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000004656612873077392578125 run scoreboard players get #math.sqrt.out bs.data