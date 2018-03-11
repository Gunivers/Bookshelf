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



#Initialization

scoreboard players set @e[tag=GetOrientation] Phi 0
scoreboard players set @e[tag=GetOrientation] Theta 0

#Phi detection (horizontal)

scoreboard players add @e[tag=GetOrientation,rym=256] Phi 256
tp @e[tag=GetOrientation,rym=256] ~ ~ ~ ~-256 ~
scoreboard players add @e[tag=GetOrientation,rym=128] Phi 128
tp @e[tag=GetOrientation,rym=128] ~ ~ ~ ~-128 ~
scoreboard players add @e[tag=GetOrientation,rym=64] Phi 64
tp @e[tag=GetOrientation,rym=64] ~ ~ ~ ~-64 ~
scoreboard players add @e[tag=GetOrientation,rym=32] Phi 32
tp @e[tag=GetOrientation,rym=32] ~ ~ ~ ~-32 ~
scoreboard players add @e[tag=GetOrientation,rym=16] Phi 16
tp @e[tag=GetOrientation,rym=16] ~ ~ ~ ~-16 ~
scoreboard players add @e[tag=GetOrientation,rym=8] Phi 8
tp @e[tag=GetOrientation,rym=8] ~ ~ ~ ~-8 ~
scoreboard players add @e[tag=GetOrientation,rym=4] Phi 4
tp @e[tag=GetOrientation,rym=4] ~ ~ ~ ~-4 ~
scoreboard players add @e[tag=GetOrientation,rym=2] Phi 2
tp @e[tag=GetOrientation,rym=2] ~ ~ ~ ~-2 ~
scoreboard players add @e[tag=GetOrientation,rym=1] Phi 1
tp @e[tag=GetOrientation,rym=1] ~ ~ ~ ~-1 ~

#Theta detection (vertical)

scoreboard players add @e[tag=GetOrientation,rxm=0,rx=90] Theta 90
tp @e[tag=GetOrientation,rxm=-90,rx=-1] ~ ~ ~ ~ ~90
scoreboard players add @e[tag=GetOrientation,rxm=64] Theta 64
tp @e[tag=GetOrientation,rxm=64] ~ ~ ~ ~ ~-64
scoreboard players add @e[tag=GetOrientation,rxm=32] Theta 32
tp @e[tag=GetOrientation,rxm=32] ~ ~ ~ ~ ~-32
scoreboard players add @e[tag=GetOrientation,rxm=16] Theta 16
tp @e[tag=GetOrientation,rxm=16] ~ ~ ~ ~ ~-16
scoreboard players add @e[tag=GetOrientation,rxm=8] Theta 8
tp @e[tag=GetOrientation,rxm=8] ~ ~ ~ ~ ~-8
scoreboard players add @e[tag=GetOrientation,rxm=4] Theta 4
tp @e[tag=GetOrientation,rxm=4] ~ ~ ~ ~ ~-4
scoreboard players add @e[tag=GetOrientation,rxm=2] Theta 2
tp @e[tag=GetOrientation,rxm=2] ~ ~ ~ ~ ~-2
scoreboard players add @e[tag=GetOrientation,rxm=1] Theta 1
tp @e[tag=GetOrientation,rxm=1] ~ ~ ~ ~ ~-1

scoreboard players tag @e remove GetOrientation
