# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Basic/Move

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Constant (Import file)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# OUTPUT:

# CODE:

scoreboard players operation @s Tmp1 = @s VectorX
scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players operation @s Tmp1 *= @s VectorSpeed
scoreboard players operation @s Tmp2 *= @s VectorSpeed
scoreboard players operation @s Tmp3 *= @s VectorSpeed
scoreboard players operation @s Tmp1 *= 25 Constant
scoreboard players operation @s Tmp2 *= 25 Constant
scoreboard players operation @s Tmp3 *= 25 Constant
scoreboard players operation @s Tmp1 /= 10000 Constant
scoreboard players operation @s Tmp2 /= 10000 Constant
scoreboard players operation @s Tmp3 /= 10000 Constant

# X positive

tp @s[score_Tmp1_min=512] ~2.048 ~ ~
scoreboard players remove @s[score_Tmp1_min=512] Tmp1 512
tp @s[score_Tmp1_min=256] ~1.024 ~ ~
scoreboard players remove @s[score_Tmp1_min=256] Tmp1 256
tp @s[score_Tmp1_min=128] ~0.512 ~ ~
scoreboard players remove @s[score_Tmp1_min=128] Tmp1 128
tp @s[score_Tmp1_min=64] ~0.256 ~ ~
scoreboard players remove @s[score_Tmp1_min=64] Tmp1 64
tp @s[score_Tmp1_min=32] ~0.128 ~ ~
scoreboard players remove @s[score_Tmp1_min=32] Tmp1 32
tp @s[score_Tmp1_min=16] ~0.064 ~ ~
scoreboard players remove @s[score_Tmp1_min=16] Tmp1 16
tp @s[score_Tmp1_min=8] ~0.032 ~ ~
scoreboard players remove @s[score_Tmp1_min=8] Tmp1 8
tp @s[score_Tmp1_min=4] ~0.016 ~ ~
scoreboard players remove @s[score_Tmp1_min=4] Tmp1 4
tp @s[score_Tmp1_min=2] ~0.008 ~ ~
scoreboard players remove @s[score_Tmp1_min=2] Tmp1 2
tp @s[score_Tmp1_min=1] ~0.004 ~ ~

# Y positive

tp @s[score_Tmp2_min=512] ~ ~2.048 ~
scoreboard players remove @s[score_Tmp2_min=512] Tmp2 512
tp @s[score_Tmp2_min=256] ~ ~1.024 ~
scoreboard players remove @s[score_Tmp2_min=256] Tmp2 256
tp @s[score_Tmp2_min=128] ~ ~0.512 ~
scoreboard players remove @s[score_Tmp2_min=128] Tmp2 128
tp @s[score_Tmp2_min=64] ~ ~0.256 ~
scoreboard players remove @s[score_Tmp2_min=64] Tmp2 64
tp @s[score_Tmp2_min=32] ~ ~0.128 ~
scoreboard players remove @s[score_Tmp2_min=32] Tmp2 32
tp @s[score_Tmp2_min=16] ~ ~0.064 ~
scoreboard players remove @s[score_Tmp2_min=16] Tmp2 16
tp @s[score_Tmp2_min=8] ~ ~0.032 ~
scoreboard players remove @s[score_Tmp2_min=8] Tmp2 8
tp @s[score_Tmp2_min=4] ~ ~0.016 ~
scoreboard players remove @s[score_Tmp2_min=4] Tmp2 4
tp @s[score_Tmp2_min=2] ~ ~0.008 ~
scoreboard players remove @s[score_Tmp2_min=2] Tmp2 2
tp @s[score_Tmp2_min=1] ~ ~0.004 ~

# Z positive

tp @s[score_Tmp3_min=512] ~ ~ ~2.048
scoreboard players remove @s[score_Tmp3_min=512] Tmp3 512
tp @s[score_Tmp3_min=256] ~ ~ ~1.024
scoreboard players remove @s[score_Tmp3_min=256] Tmp3 256
tp @s[score_Tmp3_min=128] ~ ~ ~0.512
scoreboard players remove @s[score_Tmp3_min=128] Tmp3 128
tp @s[score_Tmp3_min=64] ~ ~ ~0.256
scoreboard players remove @s[score_Tmp3_min=64] Tmp3 64
tp @s[score_Tmp3_min=32] ~ ~ ~0.128
scoreboard players remove @s[score_Tmp3_min=32] Tmp3 32
tp @s[score_Tmp3_min=16] ~ ~ ~0.064
scoreboard players remove @s[score_Tmp3_min=16] Tmp3 16
tp @s[score_Tmp3_min=8] ~ ~ ~0.032
scoreboard players remove @s[score_Tmp3_min=8] Tmp3 8
tp @s[score_Tmp3_min=4] ~ ~ ~0.016
scoreboard players remove @s[score_Tmp3_min=4] Tmp3 4
tp @s[score_Tmp3_min=2] ~ ~ ~0.008
scoreboard players remove @s[score_Tmp3_min=2] Tmp3 2
tp @s[score_Tmp3_min=1] ~ ~ ~0.004

# X negative

tp @s[score_Tmp1=-512] ~-2.048 ~ ~
scoreboard players add @s[score_Tmp1=-512] Tmp1 512
tp @s[score_Tmp1=-256] ~-1.024 ~ ~
scoreboard players add @s[score_Tmp1=-256] Tmp1 256
tp @s[score_Tmp1=-128] ~-0.512 ~ ~
scoreboard players add @s[score_Tmp1=-128] Tmp1 128
tp @s[score_Tmp1=-64] ~-0.256 ~ ~
scoreboard players add @s[score_Tmp1=-64] Tmp1 64
tp @s[score_Tmp1=-32] ~-0.128 ~ ~
scoreboard players add @s[score_Tmp1=-32] Tmp1 32
tp @s[score_Tmp1=-16] ~-0.064 ~ ~
scoreboard players add @s[score_Tmp1=-16] Tmp1 16
tp @s[score_Tmp1=-8] ~-0.032 ~ ~
scoreboard players add @s[score_Tmp1=-8] Tmp1 8
tp @s[score_Tmp1=-4] ~-0.016 ~ ~
scoreboard players add @s[score_Tmp1=-4] Tmp1 4
tp @s[score_Tmp1=-2] ~-0.008 ~ ~
scoreboard players add @s[score_Tmp1=-2] Tmp1 2
tp @s[score_Tmp1=-1] ~-0.004 ~ ~

# Y negative

tp @s[score_Tmp2=-512] ~ ~-2.048 ~
scoreboard players add @s[score_Tmp2=-512] Tmp2 512
tp @s[score_Tmp2=-256] ~ ~-1.024 ~
scoreboard players add @s[score_Tmp2=-256] Tmp2 256
tp @s[score_Tmp2=-128] ~ ~-0.512 ~
scoreboard players add @s[score_Tmp2=-128] Tmp2 128
tp @s[score_Tmp2=-64] ~ ~-0.256 ~
scoreboard players add @s[score_Tmp2=-64] Tmp2 64
tp @s[score_Tmp2=-32] ~ ~-0.128 ~
scoreboard players add @s[score_Tmp2=-32] Tmp2 32
tp @s[score_Tmp2=-16] ~ ~-0.064 ~
scoreboard players add @s[score_Tmp2=-16] Tmp2 16
tp @s[score_Tmp2=-8] ~ ~-0.032 ~
scoreboard players add @s[score_Tmp2=-8] Tmp2 8
tp @s[score_Tmp2=-4] ~ ~-0.016 ~
scoreboard players add @s[score_Tmp2=-4] Tmp2 4
tp @s[score_Tmp2=-2] ~ ~-0.008 ~
scoreboard players add @s[score_Tmp2=-2] Tmp2 2
tp @s[score_Tmp2=-1] ~ ~-0.004 ~

# Z negative

tp @s[score_Tmp3=-512] ~ ~ ~-2.048
scoreboard players add @s[score_Tmp3=-512] Tmp3 512
tp @s[score_Tmp3=-256] ~ ~ ~-1.024
scoreboard players add @s[score_Tmp3=-256] Tmp3 256
tp @s[score_Tmp3=-128] ~ ~ ~-0.512
scoreboard players add @s[score_Tmp3=-128] Tmp3 128
tp @s[score_Tmp3=-64] ~ ~ ~-0.256
scoreboard players add @s[score_Tmp3=-64] Tmp3 64
tp @s[score_Tmp3=-32] ~ ~ ~-0.128
scoreboard players add @s[score_Tmp3=-32] Tmp3 32
tp @s[score_Tmp3=-16] ~ ~ ~-0.064
scoreboard players add @s[score_Tmp3=-16] Tmp3 16
tp @s[score_Tmp3=-8] ~ ~ ~-0.032
scoreboard players add @s[score_Tmp3=-8] Tmp3 8
tp @s[score_Tmp3=-4] ~ ~ ~-0.016
scoreboard players add @s[score_Tmp3=-4] Tmp3 4
tp @s[score_Tmp3=-2] ~ ~ ~-0.008
scoreboard players add @s[score_Tmp3=-2] Tmp3 2
tp @s[score_Tmp3=-1] ~ ~ ~-0.004
