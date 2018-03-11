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

#Output values: Orientation



#Initialization
execute @e[tag=SetOrientation] ~ ~ ~ scoreboard players operation @s Tmp = @s Phi
execute @e[tag=SetOrientation] ~ ~ ~ scoreboard players operation @s Tmp2 = @s Theta
execute @e[tag=SetOrientation] ~ ~ ~ scoreboard players operation @s Tmp = @s[tag=Plane] PlanePhi
execute @e[tag=SetOrientation] ~ ~ ~ scoreboard players operation @s Tmp2 = @s[tag=Plane] PlaneTheta
tp @e[tag=SetOrientation] ~ ~ ~ 0 -90

#Tmp(horizontal)
tp @e[tag=SetOrientation,score_Tmp_min=256] ~ ~ ~ ~256 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=256] Tmp 256
tp @e[tag=SetOrientation,score_Tmp_min=128] ~ ~ ~ ~128 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=128] Tmp 128
tp @e[tag=SetOrientation,score_Tmp_min=64] ~ ~ ~ ~64 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=64] Tmp 64
tp @e[tag=SetOrientation,score_Tmp_min=32] ~ ~ ~ ~32 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=32] Tmp 32
tp @e[tag=SetOrientation,score_Tmp_min=16] ~ ~ ~ ~16 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=16] Tmp 16
tp @e[tag=SetOrientation,score_Tmp_min=8] ~ ~ ~ ~8 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=8] Tmp 8
tp @e[tag=SetOrientation,score_Tmp_min=4] ~ ~ ~ ~4 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=4] Tmp 4
tp @e[tag=SetOrientation,score_Tmp_min=2] ~ ~ ~ ~2 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=2] Tmp 2
tp @e[tag=SetOrientation,score_Tmp_min=1] ~ ~ ~ ~1 ~
scoreboard players remove @e[tag=SetOrientation,score_Tmp_min=1] Tmp 1

#Tmp2(vertical)
tp @e[tag=SetOrientation,score_Tmp2_min=128] ~ ~ ~ ~ ~128
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=128] Tmp2 128
tp @e[tag=SetOrientation,score_Tmp2_min=64] ~ ~ ~ ~ ~64
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=64] Tmp2 64
tp @e[tag=SetOrientation,score_Tmp2_min=32] ~ ~ ~ ~ ~32
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=32] Tmp2 32
tp @e[tag=SetOrientation,score_Tmp2_min=16] ~ ~ ~ ~ ~16
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=16] Tmp2 16
tp @e[tag=SetOrientation,score_Tmp2_min=8] ~ ~ ~ ~ ~8
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=8] Tmp2 8
tp @e[tag=SetOrientation,score_Tmp2_min=4] ~ ~ ~ ~ ~4
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=4] Tmp2 4
tp @e[tag=SetOrientation,score_Tmp2_min=2] ~ ~ ~ ~ ~2
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=2] Tmp2 2
tp @e[tag=SetOrientation,score_Tmp2_min=1] ~ ~ ~ ~ ~1
scoreboard players remove @e[tag=SetOrientation,score_Tmp2_min=1] Tmp2 1 

scoreboard players tag @e remove SetOrientation