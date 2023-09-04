# if E = -25
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 18014398509481984
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000045474735088646411895751953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -26
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 72057594037927936
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000227373675443232059478759765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -27
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 72057594037927936
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000227373675443232059478759765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -28
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 288230376151711744
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000001136868377216160297393798828125 run scoreboard players get #math.sqrt.out bs.data