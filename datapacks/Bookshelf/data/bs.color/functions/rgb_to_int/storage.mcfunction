execute store success score #color.rgb_to_int.input_storage_exist bs.in run data get storage bs:in color.rgb_to_int

execute if score #color.rgb_to_int.input_storage_exist bs.in matches 1 store result score $color.rgb_to_int.color.0 bs.in run data get storage bs:in color.rgb_to_int.color[0]
execute if score #color.rgb_to_int.input_storage_exist bs.in matches 1 store result score $color.rgb_to_int.color.1 bs.in run data get storage bs:in color.rgb_to_int.color[1]
execute if score #color.rgb_to_int.input_storage_exist bs.in matches 1 store result score $color.rgb_to_int.color.2 bs.in run data get storage bs:in color.rgb_to_int.color[2]

execute store result storage bs:out color.rgb_to_int int 1 run function bs.color:rgb_to_int/score
return run scoreboard players get $color.rgb_to_int bs.out
