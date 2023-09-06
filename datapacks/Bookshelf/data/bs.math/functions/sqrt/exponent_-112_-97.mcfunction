# is E >= -100
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs:in math.sqrt.value 1267650600228229401496703205376
# is E >= -104
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs:in math.sqrt.value 20282409603651670423947251286016
# is E >= -108
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs:in math.sqrt.value 324518553658426726783156020576256

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-100_-97
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-104_-101
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-108_-105
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-112_-109
