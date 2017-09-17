# GetOrientation

# @Author: Leirof

#Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Phi (score dummy)
# - Theta (score dummy)

#Input values: None

#Output values:
# - Phi (score dummy)
# - Theta (score dummy)

summon armor_stand ~ ~ ~ {Tags:["GetOrientation"],NoGravity:1,Invisible:1,Small:1,Marker:1}
execute @e[type=armor_stand,c=1,tag=GetOrientation] ~ ~ ~ function Gunivers-Lib:Entity/Orientation/Get-Slave

scoreboard players operation @s LocX = @e[x=0,y=0,z=0,type=armor_stand,tag=GetOrientation,c=1] Phi
scoreboard players operation @s LocY = @e[x=0,y=0,z=0,type=armor_stand,tag=GetOrientation,c=1] Theta
kill @e[x=0,y=0,z=0,type=armor_stand,tag=GetOrientation,c=1]
