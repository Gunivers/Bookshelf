# GetOrientation

# @Author: KubbyDev

#Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Phi (score dummy)
# - Theta (score dummy)

#Input values: None

#Output values:
# - Phi (score dummy)
# - Theta (score dummy)



#Initialization

function Gunivers-Lib:Entity/Orientation/Get-Slave
scoreboard players operation @s Phi *= 10 Constant
scoreboard players operation @s Theta *= 10 Constant

#Phi detection (horizontal)

tp @s ~ ~ ~ ~-0.8 ~
scoreboard players add @s[ry=0,rym=0] Phi 8
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.8 ~
tp @s ~ ~ ~ ~-0.4 ~
scoreboard players add @s[ry=0,rym=0] Phi 4
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.4 ~
tp @s ~ ~ ~ ~-0.2 ~
scoreboard players add @s[ry=0,rym=0] Phi 2
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.2 ~
tp @s ~ ~ ~ ~-0.1 ~
scoreboard players add @s[ry=0,rym=0] Phi 1
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.1 ~

#Theta detection (vertical) 

tp @s ~ ~ ~ ~ ~-0.8
scoreboard players add @s[rx=0,rxm=0] Theta 8
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.8
tp @s ~ ~ ~ ~ ~-0.4
scoreboard players add @s[rx=0,rxm=0] Theta 4
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.4
tp @s ~ ~ ~ ~ ~-0.2
scoreboard players add @s[rx=0,rxm=0] Theta 2
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.2
tp @s ~ ~ ~ ~ ~-0.1
scoreboard players add @s[rx=0,rxm=0] Theta 1
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.1
