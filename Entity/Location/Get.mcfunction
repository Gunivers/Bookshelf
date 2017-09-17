#Get Location
#@Author: LeiRoF

#Version: 1.0
#Minecraft Version: 1.12

#Import:
# - Location

#Input values:
# - None

#Output values:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)


execute @s ~ ~ ~ summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["GetLocation"]}

execute @s ~ ~ ~ execute @e[type=armor_stand,tag=GetLocation,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Location/Get-Slave

scoreboard players operation @s LocX = @e[x=0,y=0,z=0,type=armor_stand,tag=GetLocation,c=1] LocX
scoreboard players operation @s LocY = @e[x=0,y=0,z=0,type=armor_stand,tag=GetLocation,c=1] LocY
scoreboard players operation @s LocZ = @e[x=0,y=0,z=0,type=armor_stand,tag=GetLocation,c=1] LocZ
kill @e[x=0,y=0,z=0,type=armor_stand,tag=GetLocation,c=1]
