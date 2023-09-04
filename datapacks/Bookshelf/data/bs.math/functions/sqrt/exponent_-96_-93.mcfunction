# if E = -93
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5316911983139663491615228241121378304
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000026469779601696885595885078146238811314105987548828125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -94
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 21267647932558653966460912964485513216
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000000132348898008484427979425390731194056570529937744140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -95
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 21267647932558653966460912964485513216
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000000132348898008484427979425390731194056570529937744140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -96
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 85070591730234615865843651857942052864
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.00000000000000000000000661744490042422139897126953655970282852649688720703125 run scoreboard players get #math.sqrt.out bs.data