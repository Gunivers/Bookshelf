

# NAME: centre
# PATH: glib:mapedit/
 
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

scoreboard objectives add Centre_X dummy
scoreboard objectives add Centre_Y dummy
scoreboard objectives add Centre_Z dummy

scoreboard objectives add Rayon dummy


#Position X Y Z du debut 
execute at @s store result score @s Centre_X run data get entity @s Pos[0]
execute at @s store result score @s Centre_Y run data get entity @s Pos[1]
execute at @s store result score @s Centre_Z run data get entity @s Pos[2]

#Pour fair joli
particle dust 0.000 0.000 1.000 1 ~ ~ ~ 0 1 0 0.000000001 100 normal