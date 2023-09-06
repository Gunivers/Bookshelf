# if E = -113
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 11150372599265311570767859136324180752990208
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000001292469707114105741986576081359316958696581423282623291015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -114
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 22300745198530623141535718272648361505980416
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000001292469707114105741986576081359316958696581423282623291015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -115
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 44601490397061246283071436545296723011960832
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000006462348535570528709932880406796584793482907116413116455078125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -116
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 89202980794122492566142873090593446023921664
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.000000000000000000000000006462348535570528709932880406796584793482907116413116455078125 run scoreboard players get #math.sqrt.out bs.data
