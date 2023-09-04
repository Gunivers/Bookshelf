# is E >= 108
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000000000000030814879110195773648895647081358837096609626371446211123839020729065
# is E >= 104
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000000000000493038065763132378382330353301741393545754021943139377981424331665039
# is E >= 100
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000000000007888609052210118054117285652827862296732064351090230047702789306640625

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_108_111
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_104_107
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_100_103
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_96_99