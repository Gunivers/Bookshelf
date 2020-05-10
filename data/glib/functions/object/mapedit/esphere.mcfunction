# NAME: esphere
# PATH: glib:object/mapedit/sphere
 
# AUTHOR: xam74er1
 
# VERSION: 0.1 
# MINECRAFT: 1.14.X 

# INPUT: 
# - Centre Location  : 
#	- Centre_X (score dummy)
#	- Centre_Y (score dummy)
# 	- Centre_Z (score dummy)



# - Block ID
#	BlockId (score dummy)
#

# - Rayon
#	Rayon (score dummy)

# OUTPUT: 
# - Generate a empty sphere at the center of rayon eguale to the scoreboard
 
# NOTE: 
# For place the centre use function glib:object/mapedit/center

#Ini


scoreboard objectives add BrushID dummy
scoreboard objectives add SphereCalc dummy
scoreboard objectives add SphereSum dummy
scoreboard objectives add Rayon2 dummy


#On place les point 

scoreboard players operation @s Pos_xd = @s Centre_X
scoreboard players operation @s Pos_xd += @s Rayon

scoreboard players operation @s Pos_yd = @s Centre_Y
scoreboard players operation @s Pos_yd += @s Rayon

scoreboard players operation @s Pos_zd = @s Centre_Z
scoreboard players operation @s Pos_zd += @s Rayon


scoreboard players operation @s Pos_xf = @s Centre_X
scoreboard players operation @s Pos_xf -= @s Rayon

scoreboard players operation @s Pos_yf = @s Centre_Y
scoreboard players operation @s Pos_yf -= @s Rayon

scoreboard players operation @s Pos_zf = @s Centre_Z
scoreboard players operation @s Pos_zf -= @s Rayon


#On initlise tout (factorisation )

function glib:object/mapedit/child/set/ini


execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Rayon = @s Rayon

execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Centre_X = @s Centre_X
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Centre_Y = @s Centre_Y
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Centre_Z = @s Centre_Z

execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Rayon = @s Rayon
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Rayon2 = @s Rayon
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Rayon2 *= @s Rayon


execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] BlockId = @s BlockId

#3 corespon a la sphere 
execute as @s run scoreboard players set @e[tag=spawnSET,limit=1,sort=nearest] BrushID 4



execute as @e[tag=spawnSET] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s Set_X
execute as @e[tag=spawnSET] at @s store result entity @s Pos[1] double 1 run scoreboard players get @s Set_Y
execute as @e[tag=spawnSET] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s Set_Z

#On ajout 1 au nb de set en cour 
scoreboard players add setCount Set_Option 1

#tag @e[tag=spawnSET] remove spawnSET 

#On lance toute la procedure 
function glib:object/mapedit/child/set/repeate