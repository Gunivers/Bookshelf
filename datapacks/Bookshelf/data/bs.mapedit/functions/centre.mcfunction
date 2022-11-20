

# NAME: centre
# PATH: bs.mapedit:

# AUTHOR: xam74er1

# VERSION: 0.1
# MINECRAFT: 1.14.X

# OUTPUT:
# - Location :
#	- Centre_X (score dummy)
#	- Centre_Y (score dummy)
# 	- Centre_Z (score dummy)


# NOTE:
# The positon was place on the score of the entity who execute the function
#INI

scoreboard objectives add Centre_X dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Center X","color":"dark_gray"}]
scoreboard objectives add Centre_Y dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Center Y","color":"dark_gray"}]
scoreboard objectives add Centre_Z dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Center Z","color":"dark_gray"}]

scoreboard objectives add Rayon dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Radius","color":"dark_gray"}]


#Position X Y Z du debut
execute at @s store result score @s Centre_X run data get entity @s Pos[0]
execute at @s store result score @s Centre_Y run data get entity @s Pos[1]
execute at @s store result score @s Centre_Z run data get entity @s Pos[2]

#Pour fair joli
particle dust 0.000 0.000 1.000 1 ~ ~ ~ 0 1 0 0.000000001 100 normal
