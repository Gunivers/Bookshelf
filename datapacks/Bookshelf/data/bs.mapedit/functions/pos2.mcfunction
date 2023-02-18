
# NAME: pos2
# PATH: bs.mapedit:pos1

# AUTHOR: xam74er1

# VERSION: 0.1
# MINECRAFT: 1.14.X

# OUTPUT:
# - Location :
#	- Pos_xf (score dummy)
#	- Pos_yf (score dummy)
# 	- Pos_zf (score dummy)


# NOTE:
# The positon was place on the score of the entity who execute the function

scoreboard objectives add Pos_xf dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Pos X f","color":"aqua"}]
scoreboard objectives add Pos_yf dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Pos Y f","color":"aqua"}]
scoreboard objectives add Pos_zf dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Pos Z f","color":"aqua"}]

#Postion X Y Z de la fin
execute at @s store result score @s Pos_xf run data get entity @s Pos[0]
execute at @s store result score @s Pos_yf run data get entity @s Pos[1]
execute at @s store result score @s Pos_zf run data get entity @s Pos[2]


#Pour fair jolie
particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 1 0 0.000000001 100 normal
