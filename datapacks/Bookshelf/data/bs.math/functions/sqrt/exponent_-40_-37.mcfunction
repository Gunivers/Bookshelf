# if E = -37
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 73786976294838206464
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000710542735760100185871124267578125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -38
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 295147905179352825856
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000003552713678800500929355621337890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -39
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 295147905179352825856
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000003552713678800500929355621337890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -40
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1180591620717411303424
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000000017763568394002504646778106689453125 run scoreboard players get #math.sqrt.out bs.data