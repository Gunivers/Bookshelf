# is E >= -84
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs:in math.sqrt.value 19342813113834066795298816
# is E >= -88
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs:in math.sqrt.value 309485009821345068724781056
# is E >= -92
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs:in math.sqrt.value 4951760157141521099596496896

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-84_-81
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-88_-85
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-92_-89
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-96_-93
