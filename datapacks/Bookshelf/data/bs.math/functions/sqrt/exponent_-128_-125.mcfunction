# if E = -125
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 45671926166590716193865151022383844364247891968
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000000020194839173657902218540251271239327479634084738790988922119140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -126
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 91343852333181432387730302044767688728495783936
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000000020194839173657902218540251271239327479634084738790988922119140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -127
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 182687704666362864775460604089535377456991567872
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000000100974195868289511092701256356196637398170423693954944610595703125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -128
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 365375409332725729550921208179070754913983135744
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.000000000000000000000000000100974195868289511092701256356196637398170423693954944610595703125 run scoreboard players get #math.sqrt.out bs.data
