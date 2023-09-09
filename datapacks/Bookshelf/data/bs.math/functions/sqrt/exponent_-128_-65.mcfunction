# is E >= -80
execute store result score #math.sqrt._check_3 bs.data run data get storage bs:in math.sqrt.value 1208925819614629174706176
# is E >= -96
execute store result score #math.sqrt._check_2 bs.data run data get storage bs:in math.sqrt.value 79228162514264337593543950336
# is E >= -112
execute store result score #math.sqrt._check_1 bs.data run data get storage bs:in math.sqrt.value 5192296858534827628530496329220096

execute if score #math.sqrt._check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-80_-65
execute if score #math.sqrt._check_3 bs.data matches 0 if score #math.sqrt._check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-96_-81
execute if score #math.sqrt._check_2 bs.data matches 0 if score #math.sqrt._check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-112_-97
execute if score #math.sqrt._check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-128_-113
