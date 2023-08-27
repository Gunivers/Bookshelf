# if E = 63
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000116415321826934814453125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 6 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 62
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000023283064365386962890625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 4 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 61
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000004656612873077392578125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 3 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 60
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000931322574615478515625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 2 run scoreboard players get #out bs.data