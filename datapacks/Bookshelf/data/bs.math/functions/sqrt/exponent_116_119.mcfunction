# if E = 119
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.00000000000000000000000000161558713389263217748322010169914619837072677910327911376953125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 1073741824 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 118
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.0000000000000000000000000032311742677852643549664402033982923967414535582065582275390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 1073741824 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 117
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.000000000000000000000000006462348535570528709932880406796584793482907116413116455078125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 536870912 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 116
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 0.00000000000000000000000001292469707114105741986576081359316958696581423282623291015625
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 536870912 run scoreboard players get #math.sqrt.out bs.data
