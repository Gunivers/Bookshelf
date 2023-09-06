# if E = -33
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 9223372036854775808
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000142108547152020037174224853515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -34
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 18446744073709551616
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000142108547152020037174224853515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -35
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 36893488147419103232
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000710542735760100185871124267578125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -36
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 73786976294838206464
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.00000000000000710542735760100185871124267578125 run scoreboard players get #math.sqrt.out bs.data
