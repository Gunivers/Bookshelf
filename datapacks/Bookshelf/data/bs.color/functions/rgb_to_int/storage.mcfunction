execute store success score #color.rgb_to_int.storage_changed bs.data run data modify storage bs:data color.rgb_to_int.color set from storage bs:in color.rgb_to_int.color

execute if score #color.rgb_to_int.storage_changed bs.data matches 1 store result score $color.rgb_to_int.color.r bs.in run data get storage bs:in color.rgb_to_int.color[0]
execute if score #color.rgb_to_int.storage_changed bs.data matches 1 store result score $color.rgb_to_int.color.g bs.in run data get storage bs:in color.rgb_to_int.color[1]
execute if score #color.rgb_to_int.storage_changed bs.data matches 1 store result score $color.rgb_to_int.color.b bs.in run data get storage bs:in color.rgb_to_int.color[2]

# TODO: optimize when return run function is fixed
execute store result storage bs:out color.rgb_to_int int 1 run function bs.color:rgb_to_int/score
return run scoreboard players get $color.rgb_to_int bs.out
