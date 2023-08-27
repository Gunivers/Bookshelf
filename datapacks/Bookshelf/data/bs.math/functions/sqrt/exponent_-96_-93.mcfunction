
# if E = -93
execute store result score #in bs.data run data get storage bs.in math.sqrt 10633823966279326983230456482242756608
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000187169606528732200470197033401252014632267423848295704939409544748790681367723 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -94
execute store result score #in bs.data run data get storage bs.in math.sqrt 21267647932558653966460912964485513216
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000132348898008484427979425390731194056570529937744140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -95
execute store result score #in bs.data run data get storage bs.in math.sqrt 42535295865117307932921825928971026432
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000093584803264366100235098516700626007316133711924147852469704772374395340683861 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -96
execute store result score #in bs.data run data get storage bs.in math.sqrt 85070591730234615865843651857942052864
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000000000000000000661744490042422139897126953655970282852649688720703125 run scoreboard players get #out bs.data
