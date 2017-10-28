# GetOrientation

# @Author: KubbyDev

#Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Phi (score dummy)
# - Theta (score dummy)
# - PhiAcc (score dummy)
# - ThetaAcc (score dummy)

#Input values: None

#Output values:
# - PhiAcc (score dummy)
# - ThetaAcc (score dummy)
# - Phi (score dummy)
# - Theta (score dummy)



#Initialization

function Gunivers-Lib:Entity/Orientation/Get-Slave
scoreboard players operation @s PhiAcc = @s Phi
scoreboard players operation @s ThetaAcc = @s Theta
scoreboard players operation @s PhiAcc *= 1000 Constant
scoreboard players operation @s ThetaAcc *= 1000 Constant

#Phi detection (horizontal)

tp @s ~ ~ ~ ~-0.512 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 512
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.512 ~
tp @s ~ ~ ~ ~-0.256 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 256
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.256 ~
tp @s ~ ~ ~ ~-0.128 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 128
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.128 ~
tp @s ~ ~ ~ ~-0.064 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 64
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.064 ~
tp @s ~ ~ ~ ~-0.032 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 32
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.032 ~
tp @s ~ ~ ~ ~-0.016 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 16
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.016 ~
tp @s ~ ~ ~ ~-0.008 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 8
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.008 ~
tp @s ~ ~ ~ ~-0.004 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 4
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.004 ~
tp @s ~ ~ ~ ~-0.002 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 2
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.002 ~
tp @s ~ ~ ~ ~-0.001 ~
scoreboard players add @s[ry=0,rym=0] PhiAcc 1
tp @s[ry=-1,rym=-1] ~ ~ ~ ~0.001 ~

#Theta detection (vertical) 

tp @s ~ ~ ~ ~ ~-0.512
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 512
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.512
tp @s ~ ~ ~ ~ ~-0.256
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 256
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.256
tp @s ~ ~ ~ ~ ~-0.128
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 128
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.128
tp @s ~ ~ ~ ~ ~-0.064
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 64
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.064
tp @s ~ ~ ~ ~ ~-0.032
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 32
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.032
tp @s ~ ~ ~ ~ ~-0.016
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 16
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.016
tp @s ~ ~ ~ ~ ~-0.8
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 8
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.8
tp @s ~ ~ ~ ~ ~-0.4
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 4
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.4
tp @s ~ ~ ~ ~ ~-0.2
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 2
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.2
tp @s ~ ~ ~ ~ ~-0.1
scoreboard players add @s[rx=0,rxm=0] ThetaAcc 1
tp @s[rx=-1,rxm=-1] ~ ~ ~ ~ ~0.1
