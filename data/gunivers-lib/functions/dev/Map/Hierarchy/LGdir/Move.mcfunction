execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX = @e[tag=DirMoving,c=1] DirX
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY = @e[tag=DirMoving,c=1] DirY
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ = @e[tag=DirMoving,c=1] DirZ
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX *= @e[tag=DirMoving,c=1] DirSpeed
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY *= @e[tag=DirMoving,c=1] DirSpeed
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ *= @e[tag=DirMoving,c=1] DirSpeed
scoreboard players operation @e[tag=DirMoving] DirCalcX *= 25 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcY *= 25 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcZ *= 25 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcX /= 10000 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcY /= 10000 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcZ /= 10000 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcX *= 2 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcY *= 2 Constant
scoreboard players operation @e[tag=DirMoving] DirCalcZ *= 2 Constant
tp @e[tag=DirMoving,score_DirCalcX_min=1024] ~2.048 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=1024] DirCalcX 1024
tp @e[tag=DirMoving,score_DirCalcZ_min=1024] ~ ~ ~2.048 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=1024] DirCalcZ 1024
tp @e[tag=DirMoving,score_DirCalcY_min=1024] ~ ~2.048 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=1024] DirCalcY 1024
tp @e[tag=DirMoving,score_DirCalcX=-1024] ~-2.048 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-1024] DirCalcX 1024
tp @e[tag=DirMoving,score_DirCalcY=-1024] ~ ~-2.048 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-1024] DirCalcY 1024
tp @e[tag=DirMoving,score_DirCalcZ=-1024] ~ ~ ~-2.048 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-1024] DirCalcZ 1024
tp @e[tag=DirMoving,score_DirCalcX_min=512] ~1.024 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=512] DirCalcX 512
tp @e[tag=DirMoving,score_DirCalcZ_min=512] ~ ~ ~1.024 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=512] DirCalcZ 512
tp @e[tag=DirMoving,score_DirCalcY_min=512] ~ ~1.024 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=512] DirCalcY 512
tp @e[tag=DirMoving,score_DirCalcX=-512] ~-1.024 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-512] DirCalcX 512
tp @e[tag=DirMoving,score_DirCalcY=-512] ~ ~-1.024 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-512] DirCalcY 512
tp @e[tag=DirMoving,score_DirCalcZ=-512] ~ ~ ~-1.024 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-512] DirCalcZ 512
tp @e[tag=DirMoving,score_DirCalcX_min=256] ~0.512 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=256] DirCalcX 256
tp @e[tag=DirMoving,score_DirCalcY_min=256] ~ ~0.512 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=256] DirCalcY 256
tp @e[tag=DirMoving,score_DirCalcZ_min=256] ~ ~ ~0.512 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=256] DirCalcZ 256
tp @e[tag=DirMoving,score_DirCalcX=-256] ~-0.512 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-256] DirCalcX 256
tp @e[tag=DirMoving,score_DirCalcY=-256] ~ ~-0.512 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-256] DirCalcY 256
tp @e[tag=DirMoving,score_DirCalcZ=-256] ~ ~ ~-0.512 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-256] DirCalcZ 256
tp @e[tag=DirMoving,score_DirCalcX_min=128] ~0.256 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=128] DirCalcX 128
tp @e[tag=DirMoving,score_DirCalcY_min=128] ~ ~0.256 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=128] DirCalcY 128
tp @e[tag=DirMoving,score_DirCalcZ_min=128] ~ ~ ~0.256 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=128] DirCalcZ 128
tp @e[tag=DirMoving,score_DirCalcX=-128] ~-0.256 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-128] DirCalcX 128
tp @e[tag=DirMoving,score_DirCalcY=-128] ~ ~-0.256 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-128] DirCalcY 128
tp @e[tag=DirMoving,score_DirCalcZ=-128] ~ ~ ~-0.256 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-128] DirCalcZ 128
tp @e[tag=DirMoving,score_DirCalcX_min=64] ~0.128 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=64] DirCalcX 64
tp @e[tag=DirMoving,score_DirCalcY_min=64] ~ ~0.128 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=64] DirCalcY 64
tp @e[tag=DirMoving,score_DirCalcZ_min=64] ~ ~ ~0.128 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=64] DirCalcZ 64
tp @e[tag=DirMoving,score_DirCalcX=-64] ~-0.128 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-64] DirCalcX 64
tp @e[tag=DirMoving,score_DirCalcY=-64] ~ ~-0.128 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-64] DirCalcY 64
tp @e[tag=DirMoving,score_DirCalcZ=-64] ~ ~ ~-0.128 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-64] DirCalcZ 64
tp @e[tag=DirMoving,score_DirCalcX_min=32] ~0.064 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=32] DirCalcX 32
tp @e[tag=DirMoving,score_DirCalcY_min=32] ~ ~0.064 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=32] DirCalcY 32
tp @e[tag=DirMoving,score_DirCalcZ_min=32] ~ ~ ~0.064 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=32] DirCalcZ 32
tp @e[tag=DirMoving,score_DirCalcX=-32] ~-0.064 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-32] DirCalcX 32
tp @e[tag=DirMoving,score_DirCalcY=-32] ~ ~-0.064 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-32] DirCalcY 32
tp @e[tag=DirMoving,score_DirCalcZ=-32] ~ ~ ~-0.064 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-32] DirCalcZ 32
tp @e[tag=DirMoving,score_DirCalcX_min=16] ~0.032 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=16] DirCalcX 16
tp @e[tag=DirMoving,score_DirCalcY_min=16] ~ ~0.032 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=16] DirCalcY 16
tp @e[tag=DirMoving,score_DirCalcZ_min=16] ~ ~ ~0.032 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=16] DirCalcZ 16
tp @e[tag=DirMoving,score_DirCalcX=-16] ~-0.032 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-16] DirCalcX 16
tp @e[tag=DirMoving,score_DirCalcY=-16] ~ ~-0.032 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-16] DirCalcY 16
tp @e[tag=DirMoving,score_DirCalcZ=-16] ~ ~ ~-0.032 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-16] DirCalcZ 16
tp @e[tag=DirMoving,score_DirCalcX_min=8] ~0.016 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=8] DirCalcX 8
tp @e[tag=DirMoving,score_DirCalcY_min=8] ~ ~0.016 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=8] DirCalcY 8
tp @e[tag=DirMoving,score_DirCalcZ_min=8] ~ ~ ~0.016 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=8] DirCalcZ 8
tp @e[tag=DirMoving,score_DirCalcX=-8] ~-0.016 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-8] DirCalcX 8
tp @e[tag=DirMoving,score_DirCalcY=-8] ~ ~-0.016 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-8] DirCalcY 8
tp @e[tag=DirMoving,score_DirCalcZ=-8] ~ ~ ~-0.016 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-8] DirCalcZ 8
tp @e[tag=DirMoving,score_DirCalcX_min=4] ~0.008 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=4] DirCalcX 4
tp @e[tag=DirMoving,score_DirCalcY_min=4] ~ ~0.008 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=Y] DirCalcY 4
tp @e[tag=DirMoving,score_DirCalcZ_min=4] ~ ~ ~0.008 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=Y] DirCalcZ 4
tp @e[tag=DirMoving,score_DirCalcX=-4] ~-0.008 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-4] DirCalcX 4
tp @e[tag=DirMoving,score_DirCalcY=-4] ~ ~-0.008 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-4] DirCalcY 4
tp @e[tag=DirMoving,score_DirCalcZ=-4] ~ ~ ~-0.008 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-4] DirCalcZ 4
tp @e[tag=DirMoving,score_DirCalcX_min=2] ~0.004 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=2] DirCalcX 2
tp @e[tag=DirMoving,score_DirCalcY_min=2] ~ ~0.004 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=2] DirCalcY 2
tp @e[tag=DirMoving,score_DirCalcZ_min=2] ~ ~ ~0.004 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=2] DirCalcZ 2
tp @e[tag=DirMoving,score_DirCalcX=-2] ~-0.004 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-2] DirCalcX 2
tp @e[tag=DirMoving,score_DirCalcY=-2] ~ ~-0.004 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-2] DirCalcY 2
tp @e[tag=DirMoving,score_DirCalcZ=-2] ~ ~ ~-0.004 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-2] DirCalcZ 2
tp @e[tag=DirMoving,score_DirCalcX_min=1] ~0.002 ~ ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcX_min=1] DirCalcX 1
tp @e[tag=DirMoving,score_DirCalcY_min=1] ~ ~0.002 ~ ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcY_min=1] DirCalcY 1
tp @e[tag=DirMoving,score_DirCalcZ_min=1] ~ ~ ~0.002 ~ ~
scoreboard players remove @e[tag=DirMoving,score_DirCalcZ_min=1] DirCalcZ 1
tp @e[tag=DirMoving,score_DirCalcX=-1] ~-0.002 ~ ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcX=-1] DirCalcX 1
tp @e[tag=DirMoving,score_DirCalcY=-1] ~ ~-0.002 ~ ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcY=-1] DirCalcY 1
tp @e[tag=DirMoving,score_DirCalcZ=-1] ~ ~ ~-0.002 ~ ~
scoreboard players add @e[tag=DirMoving,score_DirCalcZ=-1] DirCalcZ 1
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX = @e[tag=DirMoving,c=1] DirX
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY = @e[tag=DirMoving,c=1] DirY
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ = @e[tag=DirMoving,c=1] DirZ
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX *= @e[tag=DirMoving,c=1] DirSpeed
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY *= @e[tag=DirMoving,c=1] DirSpeed
execute @e[tag=DirMoving] ~ ~ ~ /scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ *= @e[tag=DirMoving,c=1] DirSpeed
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX *= 25 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY *= 25 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ *= 25 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX /= 10000 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY /= 10000 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ /= 10000 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcX *= 2 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcY *= 2 Constant
scoreboard players operation @e[tag=DirMoving,c=1] DirCalcZ *= 2 Constant