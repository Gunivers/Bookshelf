# if E = 11
execute store result score #in bs.data run data get storage bs.in math.sqrt 524288
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000842936970217880693360937749587791234517908378620631992816925048828125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 10
execute store result score #in bs.data run data get storage bs.in math.sqrt 1048576
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000059604644775390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 9
execute store result score #in bs.data run data get storage bs.in math.sqrt 2097152
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000004214684851089403466804688747938956172589541893103159964084625244140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 8
execute store result score #in bs.data run data get storage bs.in math.sqrt 4194304
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.0000000298023223876953125 run scoreboard players get #out bs.data