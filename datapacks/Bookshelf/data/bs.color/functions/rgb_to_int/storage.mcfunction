execute store result score $color.rgb_to_int.value.0 bs.in run data get storage bs:in color.rgb_to_int.value.0 1
execute store result score $color.rgb_to_int.value.1 bs.in run data get storage bs:in color.rgb_to_int.value.1 1
execute store result score $color.rgb_to_int.value.2 bs.in run data get storage bs:in color.rgb_to_int.value.2 1

return run execute store result storage bs:out color.rgb_to_int int 1 run function bs.color:rgb_to_int/score
