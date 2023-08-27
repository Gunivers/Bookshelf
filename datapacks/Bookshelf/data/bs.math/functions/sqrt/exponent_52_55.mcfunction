
# if E = 55
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000298023223876953125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.353553390593273786368655464684707112610340118408203125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 54
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000059604644775390625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.25 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 53
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000011920928955078125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.1767766952966368931843277323423535563051700592041015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 52
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000002384185791015625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.125 run scoreboard players get #out bs.data
