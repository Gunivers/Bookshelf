# if E = 95
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000013552527156068805425093160010874271392822265625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 524288 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 94
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000542101086242752217003726400434970855712890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 262144 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 93
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000542101086242752217003726400434970855712890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 262144 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 92
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000021684043449710088680149056017398834228515625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 131072 run scoreboard players get #math.sqrt.out bs.data