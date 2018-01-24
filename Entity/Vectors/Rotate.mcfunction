# NAME: Rotate
# PATH: Gunivers-Lib:Entity/Vectors/Rotate

# AUTHOR:KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/OrienationVec (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)

# INPUT:
# - VectorPhi (score dummy)
# - VectorTheta (score dummy)

# OUTPUT:

# NOTE:
# The VectorPhi value must be in range -511 to 511 and the VectorTheta must be in range -255 to 255

# CODE:

#Initialization

scoreboard players operation @s Tmp1 = @s VectorPhi
scoreboard players operation @s Tmp2 = @s VectorTheta

#Phi (horizontal) positive

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

#Phi (horizontal) negative

tp @s[score_Tmp1=-256] ~ ~ ~ ~-256 ~
scoreboard players add @s[score_Tmp1=-256] Tmp1 256
tp @s[score_Tmp1=-128] ~ ~ ~ ~-128 ~
scoreboard players add @s[score_Tmp1=-128] Tmp1 128
tp @s[score_Tmp1=-64] ~ ~ ~ ~-64 ~
scoreboard players add @s[score_Tmp1=-64] Tmp1 64
tp @s[score_Tmp1=-32] ~ ~ ~ ~-32 ~
scoreboard players add @s[score_Tmp1=-32] Tmp1 32
tp @s[score_Tmp1=-16] ~ ~ ~ ~-16 ~
scoreboard players add @s[score_Tmp1=-16] Tmp1 16
tp @s[score_Tmp1=-8] ~ ~ ~ ~-8 ~
scoreboard players add @s[score_Tmp1=-8] Tmp1 8
tp @s[score_Tmp1=-4] ~ ~ ~ ~-4 ~
scoreboard players add @s[score_Tmp1=-4] Tmp1 4
tp @s[score_Tmp1=-2] ~ ~ ~ ~-2 ~
scoreboard players add @s[score_Tmp1=-2] Tmp1 2
tp @s[score_Tmp1=-1] ~ ~ ~ ~-1 ~
scoreboard players add @s[score_Tmp1=-1] Tmp1 1

#Theta (vertical) positive

tp @s[score_Tmp2_min=256] ~ ~ ~ ~ ~256
scoreboard players remove @s[score_Tmp2_min=256] Tmp2 256
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

#Theta (vertical) negative

tp @s[score_Tmp2=-256] ~ ~ ~ ~ ~-256
scoreboard players add @s[score_Tmp2=-256] Tmp2 256
tp @s[score_Tmp2=-128] ~ ~ ~ ~ ~-128
scoreboard players add @s[score_Tmp2=-128] Tmp2 128
tp @s[score_Tmp2=-64] ~ ~ ~ ~ ~-64
scoreboard players add @s[score_Tmp2=-64] Tmp2 64
tp @s[score_Tmp2=-32] ~ ~ ~ ~ ~-32
scoreboard players add @s[score_Tmp2=-32] Tmp2 32
tp @s[score_Tmp2=-16] ~ ~ ~ ~ ~-16
scoreboard players add @s[score_Tmp2=-16] Tmp2 16
tp @s[score_Tmp2=-8] ~ ~ ~ ~ ~-8
scoreboard players add @s[score_Tmp2=-8] Tmp2 8
tp @s[score_Tmp2=-4] ~ ~ ~ ~ ~-4
scoreboard players add @s[score_Tmp2=-4] Tmp2 4
tp @s[score_Tmp2=-2] ~ ~ ~ ~ ~-2
scoreboard players add @s[score_Tmp2=-2] Tmp2 2
tp @s[score_Tmp2=-1] ~ ~ ~ ~ ~-1
scoreboard players add @s[score_Tmp2=-1] Tmp2 1
