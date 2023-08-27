execute store success score #color.int_to_rgb.storage_changed bs.data run data modify storage bs:data color.int_to_rgb.color set from storage bs:in color.int_to_rgb.color
execute if score #color.int_to_rgb.storage_changed bs.data matches 1 store result score $color.int_to_rgb.color bs.in run data get storage bs:in color.int_to_rgb.color

function bs.color:int_to_rgb/score

execute store result storage bs:out color.int_to_rgb[0] int 1 run scoreboard players get $color.int_to_rgb.r bs.out
execute store result storage bs:out color.int_to_rgb[1] int 1 run scoreboard players get $color.int_to_rgb.g bs.out
execute store result storage bs:out color.int_to_rgb[2] int 1 run scoreboard players get $color.int_to_rgb.b bs.out
