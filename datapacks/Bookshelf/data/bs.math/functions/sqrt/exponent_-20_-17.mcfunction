# if E = -17
execute store result score #in bs.data run data get storage bs.in math.sqrt 140737488355328
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000005144878968614994466314317319261421109118093131229443315532989799976348876953125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -18
execute store result score #in bs.data run data get storage bs.in math.sqrt 281474976710656
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000363797880709171295166015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -19
execute store result score #in bs.data run data get storage bs.in math.sqrt 562949953421312
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000025724394843074972331571586596307105545590465656147216577664948999881744384765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -20
execute store result score #in bs.data run data get storage bs.in math.sqrt 1125899906842624
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.000000000001818989403545856475830078125 run scoreboard players get #out bs.data