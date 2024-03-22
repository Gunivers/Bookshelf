$execute store result score $color.hex_to_int bs.out run data get storage bs:const color.hex_values.$(z)
$execute store result score #result bs.data run data get storage bs:const color.hex_values.$(y)
scoreboard players operation #result bs.data *= 256 bs.const
scoreboard players operation $color.hex_to_int bs.out += #result bs.data
$execute store result score #result bs.data run data get storage bs:const color.hex_values.$(x)
scoreboard players operation #result bs.data *= 65536 bs.const
execute store result storage bs:out color.hex_to_int int 1 run return run scoreboard players operation $color.hex_to_int bs.out += #result bs.data
