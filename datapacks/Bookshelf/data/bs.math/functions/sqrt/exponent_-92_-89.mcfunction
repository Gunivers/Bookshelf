# if E = -89
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 332306998946228968225951765070086144
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000001058791184067875423835403125849552452564239501953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -90
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1329227995784915872903807060280344576
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000005293955920339377119177015629247762262821197509765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -91
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1329227995784915872903807060280344576
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000005293955920339377119177015629247762262821197509765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -92
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5316911983139663491615228241121378304
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000000000000000000026469779601696885595885078146238811314105987548828125 run scoreboard players get #math.sqrt.out bs.data