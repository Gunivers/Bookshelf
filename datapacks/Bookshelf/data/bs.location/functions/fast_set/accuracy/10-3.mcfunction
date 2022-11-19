tp @s 0.5 0.0 0.5

scoreboard players operation bs.accuracy.entity.location.fast_set bs.locX = @s bs.locX
scoreboard players operation bs.accuracy.entity.location.fast_set bs.locY = @s bs.locY
scoreboard players operation bs.accuracy.entity.location.fast_set bs.locZ = @s bs.locZ

scoreboard players operation @s bs.locX /= 1000 bs.const
scoreboard players operation @s bs.locY /= 1000 bs.const
scoreboard players operation @s bs.locZ /= 1000 bs.const

function bs.location:fast_set
execute at @s align xyz run tp @s ~ ~ ~

scoreboard players operation @s bs.locX = bs.accuracy.entity.location.fast_set bs.locX
scoreboard players operation @s bs.locY = bs.accuracy.entity.location.fast_set bs.locY
scoreboard players operation @s bs.locZ = bs.accuracy.entity.location.fast_set bs.locZ

execute if score @s bs.locX matches 1.. run function bs.location:fast_set/accuracy/10-3/x_p
execute if score @s bs.locX matches ..-1 run function bs.location:fast_set/accuracy/10-3/x_n
execute if score @s bs.locY matches 1.. run function bs.location:fast_set/accuracy/10-3/y_p
execute if score @s bs.locY matches ..-1 run function bs.location:fast_set/accuracy/10-3/y_n
execute if score @s bs.locZ matches 1.. run function bs.location:fast_set/accuracy/10-3/z_p
execute if score @s bs.locZ matches ..-1 run function bs.location:fast_set/accuracy/10-3/z_n
