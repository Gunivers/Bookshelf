
# if E = 67
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000072759576141834259033203125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 23 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 66
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000014551915228366851806640625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 16 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 65
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000002910383045673370361328125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 11 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 64
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000582076609134674072265625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 8 run scoreboard players get #out bs.data
