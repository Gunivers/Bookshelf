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

# Input: @s bs.locX (score)
# Input: @s bs.locY (score)
# Input: @s bs.locZ (score)

#__________________________________________________
# INIT

scoreboard objectives add bs.locX dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add bs.locY dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add bs.locZ dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tp @s 0.5 0.0 0.5

scoreboard players operation bs.entity.location.fast_set bs.var0 = @s bs.locX
scoreboard players operation bs.entity.location.fast_set bs.var1 = @s bs.locY
scoreboard players operation bs.entity.location.fast_set bs.var2 = @s bs.locZ

execute if score @s bs.locX matches 1.. run function bs.location:fast_set/child/x_p
execute if score @s bs.locX matches ..-1 run function bs.location:fast_set/child/x_n
execute if score @s bs.locY matches 1.. run function bs.location:fast_set/child/y_p
execute if score @s bs.locY matches ..-1 run function bs.location:fast_set/child/y_n
execute if score @s bs.locZ matches 1.. run function bs.location:fast_set/child/z_p
execute if score @s bs.locZ matches ..-1 run function bs.location:fast_set/child/z_n
