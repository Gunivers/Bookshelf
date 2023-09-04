# if E = -105
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 21778071482940061661655974875633165533184
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000413590306276513837435704346034981426782906055450439453125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -106
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 87112285931760246646623899502532662132736
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000000002067951531382569187178521730174907133914530277252197265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -107
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 87112285931760246646623899502532662132736
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000000002067951531382569187178521730174907133914530277252197265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -108
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 348449143727040986586495598010130648530944
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.00000000000000000000000010339757656912845935892608650874535669572651386260986328125 run scoreboard players get #math.sqrt.out bs.data