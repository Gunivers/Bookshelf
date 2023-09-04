# if E = -105
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 43556142965880123323311949751266331066368
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000005849050204022881264693657293789125457258356995259240779356548273399708792741 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -106
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 87112285931760246646623899502532662132736
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000002067951531382569187178521730174907133914530277252197265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -107
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 174224571863520493293247799005065324265472
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000002924525102011440632346828646894562728629178497629620389678274136699854396371 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -108
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 348449143727040986586495598010130648530944
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.00000000000000000000000010339757656912845935892608650874535669572651386260986328125 run scoreboard players get #math.sqrt.out bs.data