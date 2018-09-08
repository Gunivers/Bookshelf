# NAME: Set Orientation
# PATH: Gunivers-Lib:Entity/Orientation/Set

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Orienation (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)

# INPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# OUTPUT:

# CODE:
#____________________________________________________________________________________________________

#Initialization

scoreboard players operation @s Tmp1 = @s Phi
scoreboard players operation @s Tmp2 = @s Theta
tp @s ~ ~ ~ 0 -90

#Phi(horizontal)

tp @s[score_Tmp1_min=256] ~ ~ ~ ~256 ~
scoreboard players remove @s[score_Tmp1_min=256] Tmp1 256
tp @s[score_Tmp1_min=128] ~ ~ ~ ~128 ~
scoreboard players remove @s[score_Tmp1_min=128] Tmp1 128
tp @s[score_Tmp1_min=64] ~ ~ ~ ~64 ~
scoreboard players remove @s[score_Tmp1_min=64] Tmp1 64
tp @s[score_Tmp1_min=32] ~ ~ ~ ~32 ~
scoreboard players remove @s[score_Tmp1_min=32] Tmp1 32
tp @s[score_Tmp1_min=16] ~ ~ ~ ~16 ~
scoreboard players remove @s[score_Tmp1_min=16] Tmp1 16
tp @s[score_Tmp1_min=8] ~ ~ ~ ~8 ~
scoreboard players remove @s[score_Tmp1_min=8] Tmp1 8
tp @s[score_Tmp1_min=4] ~ ~ ~ ~4 ~
scoreboard players remove @s[score_Tmp1_min=4] Tmp1 4
tp @s[score_Tmp1_min=2] ~ ~ ~ ~2 ~
scoreboard players remove @s[score_Tmp1_min=2] Tmp1 2
tp @s[score_Tmp1_min=1] ~ ~ ~ ~1 ~
scoreboard players remove @s[score_Tmp1_min=1] Tmp1 1

#Theta (vertical)

tp @s[score_Tmp2_min=128] ~ ~ ~ ~ ~128
scoreboard players remove @s[score_Tmp2_min=128] Tmp2 128
tp @s[score_Tmp2_min=64] ~ ~ ~ ~ ~64
scoreboard players remove @s[score_Tmp2_min=64] Tmp2 64
tp @s[score_Tmp2_min=32] ~ ~ ~ ~ ~32
scoreboard players remove @s[score_Tmp2_min=32] Tmp2 32
tp @s[score_Tmp2_min=16] ~ ~ ~ ~ ~16
scoreboard players remove @s[score_Tmp2_min=16] Tmp2 16
tp @s[score_Tmp2_min=8] ~ ~ ~ ~ ~8
scoreboard players remove @s[score_Tmp2_min=8] Tmp2 8
tp @s[score_Tmp2_min=4] ~ ~ ~ ~ ~4
scoreboard players remove @s[score_Tmp2_min=4] Tmp2 4
tp @s[score_Tmp2_min=2] ~ ~ ~ ~ ~2
scoreboard players remove @s[score_Tmp2_min=2] Tmp2 2
tp @s[score_Tmp2_min=1] ~ ~ ~ ~ ~1
scoreboard players remove @s[score_Tmp2_min=1] Tmp2 1 
