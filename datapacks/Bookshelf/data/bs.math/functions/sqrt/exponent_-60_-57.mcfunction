# if E = -57
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 77371252455336267181195264
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000006938893903907228377647697925567626953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -58
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 309485009821345068724781056
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000034694469519536141888238489627838134765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -59
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 309485009821345068724781056
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000034694469519536141888238489627838134765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -60
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1237940039285380274899124224
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.00000000000000000173472347597680709441192448139190673828125 run scoreboard players get #math.sqrt.out bs.data