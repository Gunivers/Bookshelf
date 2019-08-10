#Fichier commun pour initiliser

#initiliser

scoreboard objectives add Set_Pos_xd dummy
scoreboard objectives add Set_Pos_yd dummy
scoreboard objectives add Set_Pos_zd dummy
scoreboard objectives add Set_Pos_xf dummy
scoreboard objectives add Set_Pos_yf dummy
scoreboard objectives add Set_Pos_zf dummy

scoreboard objectives add Set_X dummy
scoreboard objectives add Set_Y dummy
scoreboard objectives add Set_Z dummy

#Pour chaque parti on affect le plus petit des 2 valleur de sorte que xd<=xf , yd <=yf ect 

#Pour le debut 

scoreboard players operation @s Set_Pos_xd = @s Pos_xd
scoreboard players operation @s Set_Pos_xd < @s Pos_xf

scoreboard players operation @s Set_Pos_yd = @s Pos_yd
scoreboard players operation @s Set_Pos_yd < @s Pos_yf

scoreboard players operation @s Set_Pos_zd = @s Pos_zd
scoreboard players operation @s Set_Pos_zd < @s Pos_zf



#Pour la fin 
scoreboard players operation @s Set_Pos_xf = @s Pos_xd
scoreboard players operation @s Set_Pos_xf > @s Pos_xf

scoreboard players operation @s Set_Pos_yf = @s Pos_yd
scoreboard players operation @s Set_Pos_yf > @s Pos_yf

scoreboard players operation @s Set_Pos_zf = @s Pos_zd
scoreboard players operation @s Set_Pos_zf > @s Pos_zf

#Summon de l'entitier 

execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invisible:0b,Tags:["Glib","spawnSET"],CustomName:"{\"text\":\"SetAS\"}"}

#On transfet les score 
#Par la suite on aura plutieure entite ave un systeme id 
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Set_Pos_xd = @s Set_Pos_xd
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Set_Pos_yd = @s Set_Pos_yd
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Set_Pos_zd = @s Set_Pos_zd
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Set_Pos_xf = @s Set_Pos_xf
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Set_Pos_yf = @s Set_Pos_yf
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] Set_Pos_zf = @s Set_Pos_zf


#On place l @e au debut
execute as @e[tag=spawnSET] at @s run scoreboard players operation @s Set_X = @s Set_Pos_xd
execute as @e[tag=spawnSET] at @s run scoreboard players operation @s Set_Y = @s Set_Pos_yd
execute as @e[tag=spawnSET] at @s run scoreboard players operation @s Set_Z = @s Set_Pos_zd