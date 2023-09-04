# is E >= -116
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs.in math.sqrt 83076749736557242056487941267521536
# is E >= -120
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs.in math.sqrt 1329227995784915872903807060280344576
# is E >= -124
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs.in math.sqrt 21267647932558653966460912964485513216

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-116_-113
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-120_-117
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-124_-121
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-128_-125