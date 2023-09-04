# if E = 115
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000000258493941422821148397315216271863391739316284656524658203125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 759250125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 114
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.000000000000000000000000051698788284564229679463043254372678347863256931304931640625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 268435456 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 113
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.00000000000000000000000010339757656912845935892608650874535669572651386260986328125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 379625062 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 112
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000002067951531382569187178521730174907133914530277252197265625
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 134217728 run scoreboard players get #math.sqrt.out bs.data