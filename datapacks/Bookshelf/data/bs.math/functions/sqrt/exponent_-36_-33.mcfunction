
# if E = -33
execute store result score #in bs.data run data get storage bs.in math.sqrt 9223372036854775808
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000002009718347115232213404030202836492620749255129386501295130074140615761280059814453125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -34
execute store result score #in bs.data run data get storage bs.in math.sqrt 18446744073709551616
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000142108547152020037174224853515625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -35
execute store result score #in bs.data run data get storage bs.in math.sqrt 36893488147419103232
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000010048591735576161067020151014182463103746275646932506475650370703078806400299072265625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -36
execute store result score #in bs.data run data get storage bs.in math.sqrt 73786976294838206464
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000000000710542735760100185871124267578125 run scoreboard players get #out bs.data
