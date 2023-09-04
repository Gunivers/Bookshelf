# if E = 123
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000000000504870979341447555463506281780983186990852118469774723052978515625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 8589934592 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 122
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000000000020194839173657902218540251271239327479634084738790988922119140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 4294967296 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 121
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000000000020194839173657902218540251271239327479634084738790988922119140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 4294967296 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 120
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000000000000807793566946316088741610050849573099185363389551639556884765625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 2147483648 run scoreboard players get #math.sqrt.out bs.data