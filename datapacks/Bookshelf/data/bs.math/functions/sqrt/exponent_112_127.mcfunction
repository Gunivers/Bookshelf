# is E >= 124
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs:in math.sqrt.value 0.0000000000000000000000000000000000000470197740328915003187494614888898271127466222708835008603500683
# is E >= 120
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs:in math.sqrt.value 0.000000000000000000000000000000000000752316384526264005099991383822237233803945956334136013765601092
# is E >= 116
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs:in math.sqrt.value 0.0000000000000000000000000000000000120370621524202240815998621411557957408631353013461762202496174723

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_124_127
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_120_123
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_116_119
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_112_115
