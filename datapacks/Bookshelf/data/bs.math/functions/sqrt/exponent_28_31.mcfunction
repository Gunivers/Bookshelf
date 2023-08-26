# if E = 31
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.5
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00017263349150062196600032005111557964482926763594150543212890625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 30
execute store result score #in bs.data run data get storage bs.in math.sqrt 1
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00006103515625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 29
execute store result score #in bs.data run data get storage bs.in math.sqrt 2
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000086316745750310983000160025557789822414633817970752716064453125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 28
execute store result score #in bs.data run data get storage bs.in math.sqrt 4
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.000030517578125 run scoreboard players get #out bs.data