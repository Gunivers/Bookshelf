# if E = -97
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 85070591730234615865843651857942052864
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000661744490042422139897126953655970282852649688720703125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -98
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 340282366920938463463374607431768211456
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000003308722450212110699485634768279851414263248443603515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -99
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 340282366920938463463374607431768211456
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000003308722450212110699485634768279851414263248443603515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -100
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1361129467683753853853498429727072845824
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000000000000000016543612251060553497428173841399257071316242218017578125 run scoreboard players get #math.sqrt.out bs.data