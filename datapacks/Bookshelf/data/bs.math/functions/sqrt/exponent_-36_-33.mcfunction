# if E = -33
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 9223372036854775808
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000401943669423046442680806040567298524149851025877300259026014828123152256011962890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -34
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 18446744073709551616
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000142108547152020037174224853515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -35
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 36893488147419103232
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000002009718347115232213404030202836492620749255129386501295130074140615761280059814453125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -36
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 73786976294838206464
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.00000000000000710542735760100185871124267578125 run scoreboard players get #math.sqrt.out bs.data