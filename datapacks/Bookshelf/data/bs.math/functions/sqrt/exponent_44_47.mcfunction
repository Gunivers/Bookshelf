# if E = 47
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000762939453125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0220970869120796116480409665427941945381462574005126953125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 46
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000152587890625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 45
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000030517578125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.01104854345603980582402048327139709726907312870025634765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 44
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00006103515625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.0078125 run scoreboard players get #out bs.data