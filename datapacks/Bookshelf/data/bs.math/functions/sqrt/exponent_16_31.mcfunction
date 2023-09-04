# is E >= 28
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs.in math.sqrt 0.0000000037252902984619140625
# is E >= 24
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs.in math.sqrt 0.000000059604644775390625
# is E >= 20
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs.in math.sqrt 0.00000095367431640625

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_28_31
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_24_27
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_20_23
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_16_19