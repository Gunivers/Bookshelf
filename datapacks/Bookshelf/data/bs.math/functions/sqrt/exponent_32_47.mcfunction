# is E >= 44
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs:in math.sqrt.value 0.00000000000005684341886080801486968994140625
# is E >= 40
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs:in math.sqrt.value 0.0000000000009094947017729282379150390625
# is E >= 36
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs:in math.sqrt.value 0.000000000014551915228366851806640625

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_44_47
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_40_43
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_36_39
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_32_35
