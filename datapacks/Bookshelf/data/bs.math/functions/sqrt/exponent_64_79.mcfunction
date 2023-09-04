# is E >= 76
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000132348898008484427979425390731194056570529937744140625
# is E >= 72
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs.in math.sqrt 0.000000000000000000000211758236813575084767080625169910490512847900390625
# is E >= 68
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs.in math.sqrt 0.00000000000000000000338813178901720135627329000271856784820556640625

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_76_79
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_72_75
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_68_71
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_64_67