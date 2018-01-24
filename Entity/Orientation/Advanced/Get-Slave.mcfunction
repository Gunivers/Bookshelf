# Get Orientation Advanced

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Phi (score dummy)
# - Theta (score dummy)
# - Constants (Import)
# - Entity/Orientation/Get-Slave (function)

#Input values: None

#Output values:
# - Phi (score dummy)
# - Theta (score dummy)

#Initialization

function Gunivers-Lib:Entity/Orientation/Get-Slave
scoreboard players operation @s Phi *= 1000 Constant
scoreboard players operation @s Theta *= 1000 Constant

#Phi detection (horizontal)

tp @s ~ ~ ~ ~-0.512 ~
scoreboard players add @s[ry=0,rym=0] Phi 512
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.512 ~
tp @s ~ ~ ~ ~-0.256 ~
scoreboard players add @s[ry=0,rym=0] Phi 256
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.256 ~
tp @s ~ ~ ~ ~-0.128 ~
scoreboard players add @s[ry=0,rym=0] Phi 128
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.128 ~
tp @s ~ ~ ~ ~-0.064 ~
scoreboard players add @s[ry=0,rym=0] Phi 64
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.064 ~
tp @s ~ ~ ~ ~-0.032 ~
scoreboard players add @s[ry=0,rym=0] Phi 32
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.032 ~
tp @s ~ ~ ~ ~-0.016 ~
scoreboard players add @s[ry=0,rym=0] Phi 16
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.016 ~
tp @s ~ ~ ~ ~-0.008 ~
scoreboard players add @s[ry=0,rym=0] Phi 8
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.008 ~
tp @s ~ ~ ~ ~-0.004 ~
scoreboard players add @s[ry=0,rym=0] Phi 4
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.004 ~
tp @s ~ ~ ~ ~-0.002 ~
scoreboard players add @s[ry=0,rym=0] Phi 2
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.002 ~
tp @s ~ ~ ~ ~-0.001 ~
scoreboard players add @s[ry=0,rym=0] Phi 1
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.001 ~

#Theta detection (vertical) 

tp @s ~ ~ ~ ~ ~-0.512
scoreboard players add @s[rx=0,rxm=0] Theta 512
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.512
tp @s ~ ~ ~ ~ ~-0.256
scoreboard players add @s[rx=0,rxm=0] Theta 256
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.256
tp @s ~ ~ ~ ~ ~-0.128
scoreboard players add @s[rx=0,rxm=0] Theta 128
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.128
tp @s ~ ~ ~ ~ ~-0.064
scoreboard players add @s[rx=0,rxm=0] Theta 64
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.064
tp @s ~ ~ ~ ~ ~-0.032
scoreboard players add @s[rx=0,rxm=0] Theta 32
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.032
tp @s ~ ~ ~ ~ ~-0.016
scoreboard players add @s[rx=0,rxm=0] Theta 16
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.016
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
