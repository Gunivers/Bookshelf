execute if score @s glib.blockId matches 1204 run setblock ~ ~ ~ gray_bed[facing=west,occupied=false,part=foot]
execute if score @s glib.blockId matches 1205 run setblock ~ ~ ~ gray_bed[facing=east,occupied=true,part=head]
execute if score @s glib.blockId matches 1206 run setblock ~ ~ ~ gray_bed[facing=east,occupied=true,part=foot]