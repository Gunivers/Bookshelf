# if E = -113
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5575186299632655785383929568162090376495104
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000000000258493941422821148397315216271863391739316284656524658203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -114
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 22300745198530623141535718272648361505980416
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000001292469707114105741986576081359316958696581423282623291015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -115
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 22300745198530623141535718272648361505980416
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000001292469707114105741986576081359316958696581423282623291015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -116
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 89202980794122492566142873090593446023921664
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000000000000000000000006462348535570528709932880406796584793482907116413116455078125 run scoreboard players get #math.sqrt.out bs.data