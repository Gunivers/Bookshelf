# is E >= 112
execute store result score #math.sqrt._check_3 bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000000000000001925929944387235853055977942584927318538101648215388195239938795567
# is E >= 96
execute store result score #math.sqrt._check_2 bs.data run data get storage bs:in math.sqrt 0.000000000000000000000000000012621774483536188886587657044524579674771302961744368076324462890625
# is E >= 80
execute store result score #math.sqrt._check_1 bs.data run data get storage bs:in math.sqrt 0.00000000000000000000000082718061255302767487140869206996285356581211090087890625

execute if score #math.sqrt._check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_112_127
execute if score #math.sqrt._check_3 bs.data matches 0 if score #math.sqrt._check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_96_111
execute if score #math.sqrt._check_2 bs.data matches 0 if score #math.sqrt._check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_80_95
execute if score #math.sqrt._check_1 bs.data matches 0 run function bs.math:sqrt/exponent_64_79