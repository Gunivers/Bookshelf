# if E = -13
execute store result score #in bs.data run data get storage bs.in math.sqrt 8796093022208
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000041159031748919955730514538554091368872944745049835546524263918399810791015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -14
execute store result score #in bs.data run data get storage bs.in math.sqrt 17592186044416
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000014551915228366851806640625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -15
execute store result score #in bs.data run data get storage bs.in math.sqrt 35184372088832
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000205795158744599778652572692770456844364723725249177732621319591999053955078125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -16
execute store result score #in bs.data run data get storage bs.in math.sqrt 70368744177664
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.0000000000072759576141834259033203125 run scoreboard players get #out bs.data