

# NAME: pos1
# PATH: bs.mapedit:pos1

# AUTHOR: xam74er1

# VERSION: 0.1
# MINECRAFT: 1.14.X

# OUTPUT:
# - Location :
#	- Pos_xd (score dummy)
#	- Pos_yd (score dummy)
# 	- Pos_zd (score dummy)


# NOTE:
# The positon was place on the score of the entity who execute the function
#INI

scoreboard objectives add Pos_xd dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Pos X d","color":"dark_gray"}]
scoreboard objectives add Pos_yd dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Pos Y d","color":"dark_gray"}]
scoreboard objectives add Pos_zd dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Pos Z d","color":"dark_gray"}]


#Position X Y Z du debut
execute at @s store result score @s Pos_xd run data get entity @s Pos[0]
execute at @s store result score @s Pos_yd run data get entity @s Pos[1]
execute at @s store result score @s Pos_zd run data get entity @s Pos[2]

#Pour fair joli
particle dust 0.000 1.000 0.000 1 ~ ~ ~ 0 1 0 0.000000001 100 normal
