# Move Entity

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# Ouput values:
# - None

execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp = @s VectorX
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp2 = @s VectorY
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp3 = @s VectorZ

execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp *= @s VectorSpeed
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp2 *= @s VectorSpeed
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp3 *= @s VectorSpeed
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp *= 25 Constant
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp2 *= 25 Constant
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp3 *= 25 Constant
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp /= 10000 Constant
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp2 /= 10000 Constant
execute @e[tag=Moving] ~ ~ ~ scoreboard players operation @s Tmp3 /= 10000 Constant

# X positive
tp @e[tag=Moving,score_Tmp_min=512] ~2.048 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=512] Tmp 512
tp @e[tag=Moving,score_Tmp_min=256] ~1.024 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=256] Tmp 256
tp @e[tag=Moving,score_Tmp_min=128] ~0.512 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=128] Tmp 128
tp @e[tag=Moving,score_Tmp_min=64] ~0.256 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=64] Tmp 64
tp @e[tag=Moving,score_Tmp_min=32] ~0.128 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=32] Tmp 32
tp @e[tag=Moving,score_Tmp_min=16] ~0.064 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=16] Tmp 16
tp @e[tag=Moving,score_Tmp_min=8] ~0.032 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=8] Tmp 8
tp @e[tag=Moving,score_Tmp_min=4] ~0.016 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=4] Tmp 4
tp @e[tag=Moving,score_Tmp_min=2] ~0.008 ~ ~
scoreboard players remove @e[tag=Moving,score_Tmp_min=2] Tmp 2
tp @e[tag=Moving,score_Tmp_min=1] ~0.004 ~ ~

# Y positive
tp @e[tag=Moving,score_Tmp2_min=512] ~ ~2.048 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=512] Tmp2 512
tp @e[tag=Moving,score_Tmp2_min=256] ~ ~1.024 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=256] Tmp2 256
tp @e[tag=Moving,score_Tmp2_min=128] ~ ~0.512 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=128] Tmp2 128
tp @e[tag=Moving,score_Tmp2_min=64] ~ ~0.256 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=64] Tmp2 64
tp @e[tag=Moving,score_Tmp2_min=32] ~ ~0.128 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=32] Tmp2 32
tp @e[tag=Moving,score_Tmp2_min=16] ~ ~0.064 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=16] Tmp2 16
tp @e[tag=Moving,score_Tmp2_min=8] ~ ~0.032 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=8] Tmp2 8
tp @e[tag=Moving,score_Tmp2_min=4] ~ ~0.016 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=4] Tmp2 4
tp @e[tag=Moving,score_Tmp2_min=2] ~ ~0.008 ~
scoreboard players remove @e[tag=Moving,score_Tmp2_min=2] Tmp2 2
tp @e[tag=Moving,score_Tmp2_min=1] ~ ~0.004 ~

# Z positive
tp @e[tag=Moving,score_Tmp3_min=512] ~ ~ ~2.048
scoreboard players remove @e[tag=Moving,score_Tmp3_min=512] Tmp3 512
tp @e[tag=Moving,score_Tmp3_min=256] ~ ~ ~1.024
scoreboard players remove @e[tag=Moving,score_Tmp3_min=256] Tmp3 256
tp @e[tag=Moving,score_Tmp3_min=128] ~ ~ ~0.512
scoreboard players remove @e[tag=Moving,score_Tmp3_min=128] Tmp3 128
tp @e[tag=Moving,score_Tmp3_min=64] ~ ~ ~0.256
scoreboard players remove @e[tag=Moving,score_Tmp3_min=64] Tmp3 64
tp @e[tag=Moving,score_Tmp3_min=32] ~ ~ ~0.128
scoreboard players remove @e[tag=Moving,score_Tmp3_min=32] Tmp3 32
tp @e[tag=Moving,score_Tmp3_min=16] ~ ~ ~0.064
scoreboard players remove @e[tag=Moving,score_Tmp3_min=16] Tmp3 16
tp @e[tag=Moving,score_Tmp3_min=8] ~ ~ ~0.032
scoreboard players remove @e[tag=Moving,score_Tmp3_min=8] Tmp3 8
tp @e[tag=Moving,score_Tmp3_min=4] ~ ~ ~0.016
scoreboard players remove @e[tag=Moving,score_Tmp3_min=4] Tmp3 4
tp @e[tag=Moving,score_Tmp3_min=2] ~ ~ ~0.008
scoreboard players remove @e[tag=Moving,score_Tmp3_min=2] Tmp3 2
tp @e[tag=Moving,score_Tmp3_min=1] ~ ~ ~0.004

# X negative
tp @e[tag=Moving,score_Tmp=-512] ~-2.048 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-512] Tmp 512
tp @e[tag=Moving,score_Tmp=-256] ~-1.024 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-256] Tmp 256
tp @e[tag=Moving,score_Tmp=-128] ~-0.512 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-128] Tmp 128
tp @e[tag=Moving,score_Tmp=-64] ~-0.256 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-64] Tmp 64
tp @e[tag=Moving,score_Tmp=-32] ~-0.128 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-32] Tmp 32
tp @e[tag=Moving,score_Tmp=-16] ~-0.064 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-16] Tmp 16
tp @e[tag=Moving,score_Tmp=-8] ~-0.032 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-8] Tmp 8
tp @e[tag=Moving,score_Tmp=-4] ~-0.016 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-4] Tmp 4
tp @e[tag=Moving,score_Tmp=-2] ~-0.008 ~ ~
scoreboard players add @e[tag=Moving,score_Tmp=-2] Tmp 2
tp @e[tag=Moving,score_Tmp=-1] ~-0.004 ~ ~

# Y negative
tp @e[tag=Moving,score_Tmp2=-512] ~ ~-2.048 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-512] Tmp2 512
tp @e[tag=Moving,score_Tmp2=-256] ~ ~-1.024 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-256] Tmp2 256
tp @e[tag=Moving,score_Tmp2=-128] ~ ~-0.512 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-128] Tmp2 128
tp @e[tag=Moving,score_Tmp2=-64] ~ ~-0.256 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-64] Tmp2 64
tp @e[tag=Moving,score_Tmp2=-32] ~ ~-0.128 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-32] Tmp2 32
tp @e[tag=Moving,score_Tmp2=-16] ~ ~-0.064 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-16] Tmp2 16
tp @e[tag=Moving,score_Tmp2=-8] ~ ~-0.032 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-8] Tmp2 8
tp @e[tag=Moving,score_Tmp2=-4] ~ ~-0.016 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-4] Tmp2 4
tp @e[tag=Moving,score_Tmp2=-2] ~ ~-0.008 ~
scoreboard players add @e[tag=Moving,score_Tmp2=-2] Tmp2 2
tp @e[tag=Moving,score_Tmp2=-1] ~ ~-0.004 ~

# Z negative
tp @e[tag=Moving,score_Tmp3=-512] ~ ~ ~-2.048
scoreboard players add @e[tag=Moving,score_Tmp3=-512] Tmp3 512
tp @e[tag=Moving,score_Tmp3=-256] ~ ~ ~-1.024
scoreboard players add @e[tag=Moving,score_Tmp3=-256] Tmp3 256
tp @e[tag=Moving,score_Tmp3=-128] ~ ~ ~-0.512
scoreboard players add @e[tag=Moving,score_Tmp3=-128] Tmp3 128
tp @e[tag=Moving,score_Tmp3=-64] ~ ~ ~-0.256
scoreboard players add @e[tag=Moving,score_Tmp3=-64] Tmp3 64
tp @e[tag=Moving,score_Tmp3=-32] ~ ~ ~-0.128
scoreboard players add @e[tag=Moving,score_Tmp3=-32] Tmp3 32
tp @e[tag=Moving,score_Tmp3=-16] ~ ~ ~-0.064
scoreboard players add @e[tag=Moving,score_Tmp3=-16] Tmp3 16
tp @e[tag=Moving,score_Tmp3=-8] ~ ~ ~-0.032
scoreboard players add @e[tag=Moving,score_Tmp3=-8] Tmp3 8
tp @e[tag=Moving,score_Tmp3=-4] ~ ~ ~-0.016
scoreboard players add @e[tag=Moving,score_Tmp3=-4] Tmp3 4
tp @e[tag=Moving,score_Tmp3=-2] ~ ~ ~-0.008
scoreboard players add @e[tag=Moving,score_Tmp3=-2] Tmp3 2
tp @e[tag=Moving,score_Tmp3=-1] ~ ~ ~-0.004
