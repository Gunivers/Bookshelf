# if E = -37
execute store result score #in bs.data run data get storage bs.in math.sqrt 147573952589676412928
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000050242958677880805335100755070912315518731378234662532378251853515394032001495361328125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -38
execute store result score #in bs.data run data get storage bs.in math.sqrt 295147905179352825856
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000003552713678800500929355621337890625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -39
execute store result score #in bs.data run data get storage bs.in math.sqrt 590295810358705651712
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000025121479338940402667550377535456157759365689117331266189125926757697016000747680664062 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -40
execute store result score #in bs.data run data get storage bs.in math.sqrt 1180591620717411303424
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.0000000000000017763568394002504646778106689453125 run scoreboard players get #out bs.data