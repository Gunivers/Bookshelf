tp @s 0.5 0.0 0.5

scoreboard players operation glib.accuracy.entity.location.fast_set glib.locX = @s glib.locX
scoreboard players operation glib.accuracy.entity.location.fast_set glib.locY = @s glib.locY
scoreboard players operation glib.accuracy.entity.location.fast_set glib.locZ = @s glib.locZ

scoreboard players operation @s glib.locX /= 1000 glib.const
scoreboard players operation @s glib.locY /= 1000 glib.const
scoreboard players operation @s glib.locZ /= 1000 glib.const

function glib:location/fast_set
execute at @s align xyz run tp @s ~ ~ ~

scoreboard players operation @s glib.locX = glib.accuracy.entity.location.fast_set glib.locX
scoreboard players operation @s glib.locY = glib.accuracy.entity.location.fast_set glib.locY
scoreboard players operation @s glib.locZ = glib.accuracy.entity.location.fast_set glib.locZ

execute if score @s glib.locX matches 1.. run function glib:location/fast_set/accuracy/10-3/x_p
execute if score @s glib.locX matches ..-1 run function glib:location/fast_set/accuracy/10-3/x_n
execute if score @s glib.locY matches 1.. run function glib:location/fast_set/accuracy/10-3/y_p
execute if score @s glib.locY matches ..-1 run function glib:location/fast_set/accuracy/10-3/y_n
execute if score @s glib.locZ matches 1.. run function glib:location/fast_set/accuracy/10-3/z_p
execute if score @s glib.locZ matches ..-1 run function glib:location/fast_set/accuracy/10-3/z_n
