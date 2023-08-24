execute store result score $color.int_to_rgb.value bs.in run data get storage bs:in color.int_to_rgb.value 1

function bs.color:int_to_rgb/score

execute store result storage bs:out color.int_to_rgb.0 int 1 run scoreboard players get $color.int_to_rgb.0 bs.out
execute store result storage bs:out color.int_to_rgb.1 int 1 run scoreboard players get $color.int_to_rgb.1 bs.out
execute store result storage bs:out color.int_to_rgb.2 int 1 run scoreboard players get $color.int_to_rgb.2 bs.out
