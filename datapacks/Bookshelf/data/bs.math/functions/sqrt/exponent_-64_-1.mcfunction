# is E >= -16
execute store result score #math.sqrt._check_3 bs.data run data get storage bs:in math.sqrt.value 65536
# is E >= -32
execute store result score #math.sqrt._check_2 bs.data run data get storage bs:in math.sqrt.value 4294967296
# is E >= -48
execute store result score #math.sqrt._check_1 bs.data run data get storage bs:in math.sqrt.value 281474976710656

execute if score #math.sqrt._check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-16_-1
execute if score #math.sqrt._check_3 bs.data matches 0 if score #math.sqrt._check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-32_-17
execute if score #math.sqrt._check_2 bs.data matches 0 if score #math.sqrt._check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-48_-33
execute if score #math.sqrt._check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-64_-49
