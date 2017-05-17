# SetOrientation

# @Author: Leirof

#Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Phi (score dummy)
# - Theta (score dummy)

#Input values:
# - Phi (score dummy)
# - Theta (score dummy)

#Output values: None



#Initialization

scoreboard players operation @s Tmp = @s Phi
scoreboard players operation @s Tmp2 = @s Theta
tp @s[] ~ ~ ~ 0 0

#Phi(horizontal)

tp @s[score_Phi_min=256] ~ ~ ~ ~256 ~
scoreboard players remove @s[score_Phi_min=256] Phi 256
tp @s[score_Phi_min=128] ~ ~ ~ ~128 ~
scoreboard players remove @s[score_Phi_min=128] Phi 128
tp @s[score_Phi_min=64] ~ ~ ~ ~64 ~
scoreboard players remove @s[score_Phi_min=64] Phi 64
tp @s[score_Phi_min=32] ~ ~ ~ ~32 ~
scoreboard players remove @s[score_Phi_min=32] Phi 32
tp @s[score_Phi_min=16] ~ ~ ~ ~16 ~
scoreboard players remove @s[score_Phi_min=16] Phi 16
tp @s[score_Phi_min=8] ~ ~ ~ ~8 ~
scoreboard players remove @s[score_Phi_min=8] Phi 8
tp @s[score_Phi_min=4] ~ ~ ~ ~4 ~
scoreboard players remove @s[score_Phi_min=4] Phi 4
tp @s[score_Phi_min=2] ~ ~ ~ ~2 ~
scoreboard players remove @s[score_Phi_min=2] Phi 2
tp @s[score_Phi_min=1] ~ ~ ~ ~1 ~
scoreboard players remove @s[score_Phi_min=1] Phi 1

#Theta(vertical)

tp @s[score_Theta_min=90] ~ ~ ~ ~ ~-90
scoreboard players remove @s[score_Theta_min=90] Theta 90
tp @s[score_Theta_min=64] ~ ~ ~ ~ ~64
scoreboard players remove @s[score_Theta_min=64] Theta 64
tp @s[score_Theta_min=32] ~ ~ ~ ~ ~32
scoreboard players remove @s[score_Theta_min=32] Theta 32
tp @s[score_Theta_min=16] ~ ~ ~ ~ ~16
scoreboard players remove @s[score_Theta_min=16] Theta 16
tp @s[score_Theta_min=8] ~ ~ ~ ~ ~8
scoreboard players remove @s[score_Theta_min=8] Theta 8
tp @s[score_Theta_min=4] ~ ~ ~ ~ ~4
scoreboard players remove @s[score_Theta_min=4] Theta 4
tp @s[score_Theta_min=2] ~ ~ ~ ~ ~2
scoreboard players remove @s[score_Theta_min=2] Theta 2
tp @s[score_Theta_min=1] ~ ~ ~ ~ ~1
scoreboard players remove @s[score_Theta_min=1] Theta 1 

#Restitution
scoreboard players operation @s Phi = @s Tmp
scoreboard players operation @s Theta = @s Tmp2