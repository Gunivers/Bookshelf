$execute store result storage bs:out color.hex_to_rgb[0] int 1 store result score $color.hex_to_rgb.r bs.out run data get storage bs:const color.hex_values.$(x)
$execute store result storage bs:out color.hex_to_rgb[1] int 1 store result score $color.hex_to_rgb.g bs.out run data get storage bs:const color.hex_values.$(y)
$execute store result storage bs:out color.hex_to_rgb[2] int 1 store result score $color.hex_to_rgb.b bs.out run data get storage bs:const color.hex_values.$(z)
