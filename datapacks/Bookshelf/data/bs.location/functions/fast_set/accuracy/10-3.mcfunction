tp @s 0.5 0.0 0.5

scoreboard players operation bs.accuracy.entity.location.fast_set bs.loc.x = @s bs.loc.x
scoreboard players operation bs.accuracy.entity.location.fast_set bs.loc.y = @s bs.loc.y
scoreboard players operation bs.accuracy.entity.location.fast_set bs.loc.z = @s bs.loc.z

scoreboard players operation @s bs.loc.x /= 1000 bs.const
scoreboard players operation @s bs.loc.y /= 1000 bs.const
scoreboard players operation @s bs.loc.z /= 1000 bs.const

function bs.location:fast_set
execute at @s align xyz run tp @s ~ ~ ~

scoreboard players operation @s bs.loc.x = bs.accuracy.entity.location.fast_set bs.loc.x
scoreboard players operation @s bs.loc.y = bs.accuracy.entity.location.fast_set bs.loc.y
scoreboard players operation @s bs.loc.z = bs.accuracy.entity.location.fast_set bs.loc.z

execute if score @s bs.loc.x matches 1.. run function bs.location:fast_set/accuracy/10-3/x_p
execute if score @s bs.loc.x matches ..-1 run function bs.location:fast_set/accuracy/10-3/x_n
execute if score @s bs.loc.y matches 1.. run function bs.location:fast_set/accuracy/10-3/y_p
execute if score @s bs.loc.y matches ..-1 run function bs.location:fast_set/accuracy/10-3/y_n
execute if score @s bs.loc.z matches 1.. run function bs.location:fast_set/accuracy/10-3/z_p
execute if score @s bs.loc.z matches ..-1 run function bs.location:fast_set/accuracy/10-3/z_n
