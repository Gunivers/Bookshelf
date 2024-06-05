# polynomial used to approximate exp2(x):

# c0: 1.87757667737929755981396429120877655805088579654694e-3
# c1: 8.9893400854928091903150999542049248702824115753174e-3
# c2: 5.5826318057013192552862079764963709749281406402588e-2
# c3: 0.240153617043478234682751804029976483434438705444336
# c4: 0.69315307320016572578680325023015029728412628173828
# c5: 0.99999992506352930465851613917038775980472564697266

$execute store result storage bs:ctx x float $(x) run scoreboard players set #math.exp2.x bs.data 31500
execute store result score #math.exp2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp2.x bs.data 150816
execute store result score #math.exp2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp2.x bs.data 936610
execute store result score #math.exp2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp2.x bs.data 4029109
execute store result score #math.exp2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp2.x bs.data 11629179
execute store result score #math.exp2.x bs.data run data get storage bs:ctx x
execute store result storage bs:ctx x float .000000059604644775390625 run scoreboard players add #math.exp2.x bs.data 16777215
