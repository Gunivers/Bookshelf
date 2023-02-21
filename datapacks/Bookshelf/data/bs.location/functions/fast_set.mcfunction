#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:set
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

# Input: @s bs.loc.x (score)
# Input: @s bs.loc.y (score)
# Input: @s bs.loc.z (score)

#__________________________________________________
# INIT

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tp @s 0.5 0.0 0.5

scoreboard players operation bs.entity.location.fast_set bs.in.0 = @s bs.loc.x
scoreboard players operation bs.entity.location.fast_set bs.in.1 = @s bs.loc.y
scoreboard players operation bs.entity.location.fast_set bs.in.2 = @s bs.loc.z

execute if score @s bs.loc.x matches 1.. run function bs.location:fast_set/child/x_p
execute if score @s bs.loc.x matches ..-1 run function bs.location:fast_set/child/x_n
execute if score @s bs.loc.y matches 1.. run function bs.location:fast_set/child/y_p
execute if score @s bs.loc.y matches ..-1 run function bs.location:fast_set/child/y_n
execute if score @s bs.loc.z matches 1.. run function bs.location:fast_set/child/z_p
execute if score @s bs.loc.z matches ..-1 run function bs.location:fast_set/child/z_n
