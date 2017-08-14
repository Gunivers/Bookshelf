# SetVectors

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors, Tmp7

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# Ouput values:
# - None

scoreboard players tag @s remove CollisionContinue

scoreboard players tag @s[score_Tmp=0,score_Tmp_min=0,score_Tmp4_min=1] add DecreaseFactor
scoreboard players set @s[tag=DecreaseFactor] Tmp 1000
scoreboard players remove @s[tag=DecreaseFactor] Tmp4 1
scoreboard players tag @s remove DecreaseFactor

scoreboard players tag @s[score_Tmp=0,score_Tmp_min=0,score_Tmp4=-1] add DecreaseFactor
scoreboard players set @s[tag=DecreaseFactor] Tmp -1000
scoreboard players add @s[tag=DecreaseFactor] Tmp4 1
scoreboard players tag @s remove DecreaseFactor

scoreboard players tag @s[score_Tmp2=0,score_Tmp2_min=0,score_Tmp5_min=1] add DecreaseFactor
scoreboard players set @s[tag=DecreaseFactor] Tmp2 1000
scoreboard players remove @s[tag=DecreaseFactor] Tmp5 1
scoreboard players tag @s remove DecreaseFactor

scoreboard players tag @s[score_Tmp2=0,score_Tmp2_min=0,score_Tmp5=-1] add DecreaseFactor
scoreboard players set @s[tag=DecreaseFactor] Tmp2 -1000
scoreboard players add @s[tag=DecreaseFactor] Tmp5 1
scoreboard players tag @s remove DecreaseFactor

scoreboard players tag @s[score_Tmp3=0,score_Tmp3_min=0,score_Tmp6_min=1] add DecreaseFactor
scoreboard players set @s[tag=DecreaseFactor] Tmp3 1000
scoreboard players remove @s[tag=DecreaseFactor] Tmp6 1
scoreboard players tag @s remove DecreaseFactor

scoreboard players tag @s[score_Tmp3=0,score_Tmp3_min=0,score_Tmp6=-1] add DecreaseFactor
scoreboard players set @s[tag=DecreaseFactor] Tmp3 -1000
scoreboard players add @s[tag=DecreaseFactor] Tmp6 1
scoreboard players tag @s remove DecreaseFactor

tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT -> ","color":"gray"},{"text":"FactX: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}},{"text":".   FactY: ","color":"red"},{"score":{"name":"@s","objective":"Tmp5"}},{"text":".   FactZ: ","color":"red"},{"score":{"name":"@s","objective":"Tmp6"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]


# X positive

tp @s[score_Tmp_min=512] ~0.512 ~ ~
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256] ~0.256 ~ ~
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128] ~0.128 ~ ~
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64] ~0.064 ~ ~
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32] ~0.032 ~ ~
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16] ~0.016 ~ ~
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8] ~0.008 ~ ~
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4] ~0.004 ~ ~
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2] ~0.002 ~ ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1] ~0.001 ~ ~

# Y positive

tp @s[score_Tmp2_min=512] ~ ~0.512 ~
scoreboard players remove @s[score_Tmp2_min=512] Tmp2 512
tp @s[score_Tmp2_min=256] ~ ~0.256 ~
scoreboard players remove @s[score_Tmp2_min=256] Tmp2 256
tp @s[score_Tmp2_min=128] ~ ~0.128 ~
scoreboard players remove @s[score_Tmp2_min=128] Tmp2 128
tp @s[score_Tmp2_min=64] ~ ~0.064 ~
scoreboard players remove @s[score_Tmp2_min=64] Tmp2 64
tp @s[score_Tmp2_min=32] ~ ~0.032 ~
scoreboard players remove @s[score_Tmp2_min=32] Tmp2 32
tp @s[score_Tmp2_min=16] ~ ~0.016 ~
scoreboard players remove @s[score_Tmp2_min=16] Tmp2 16
tp @s[score_Tmp2_min=8] ~ ~0.008 ~
scoreboard players remove @s[score_Tmp2_min=8] Tmp2 8
tp @s[score_Tmp2_min=4] ~ ~0.004 ~
scoreboard players remove @s[score_Tmp2_min=4] Tmp2 4
tp @s[score_Tmp2_min=2] ~ ~0.002 ~
scoreboard players remove @s[score_Tmp2_min=2] Tmp2 2
tp @s[score_Tmp2_min=1] ~ ~0.001 ~

# Z positive

tp @s[score_Tmp3_min=512] ~ ~ ~0.512
scoreboard players remove @s[score_Tmp3_min=512] Tmp3 512
tp @s[score_Tmp3_min=256] ~ ~ ~0.256
scoreboard players remove @s[score_Tmp3_min=256] Tmp3 256
tp @s[score_Tmp3_min=128] ~ ~ ~0.128
scoreboard players remove @s[score_Tmp3_min=128] Tmp3 128
tp @s[score_Tmp3_min=64] ~ ~ ~0.064
scoreboard players remove @s[score_Tmp3_min=64] Tmp3 64
tp @s[score_Tmp3_min=32] ~ ~ ~0.032
scoreboard players remove @s[score_Tmp3_min=32] Tmp3 32
tp @s[score_Tmp3_min=16] ~ ~ ~0.016
scoreboard players remove @s[score_Tmp3_min=16] Tmp3 16
tp @s[score_Tmp3_min=8] ~ ~ ~0.008
scoreboard players remove @s[score_Tmp3_min=8] Tmp3 8
tp @s[score_Tmp3_min=4] ~ ~ ~0.004
scoreboard players remove @s[score_Tmp3_min=4] Tmp3 4
tp @s[score_Tmp3_min=2] ~ ~ ~0.002
scoreboard players remove @s[score_Tmp3_min=2] Tmp3 2
tp @s[score_Tmp3_min=1] ~ ~ ~0.001

# X negative

tp @s[score_Tmp=-512] ~-0.512 ~ ~
scoreboard players add @s[score_Tmp=-512] Tmp 512
tp @s[score_Tmp=-256] ~-0.256 ~ ~
scoreboard players add @s[score_Tmp=-256] Tmp 256
tp @s[score_Tmp=-128] ~-0.128 ~ ~
scoreboard players add @s[score_Tmp=-128] Tmp 128
tp @s[score_Tmp=-64] ~-0.064 ~ ~
scoreboard players add @s[score_Tmp=-64] Tmp 64
tp @s[score_Tmp=-32] ~-0.032 ~ ~
scoreboard players add @s[score_Tmp=-32] Tmp 32
tp @s[score_Tmp=-16] ~-0.016 ~ ~
scoreboard players add @s[score_Tmp=-16] Tmp 16
tp @s[score_Tmp=-8] ~-0.008 ~ ~
scoreboard players add @s[score_Tmp=-8] Tmp 8
tp @s[score_Tmp=-4] ~-0.004 ~ ~
scoreboard players add @s[score_Tmp=-4] Tmp 4
tp @s[score_Tmp=-2] ~-0.002 ~ ~
scoreboard players add @s[score_Tmp=-2] Tmp 2
tp @s[score_Tmp=-1] ~-0.001 ~ ~

# Y negative

tp @s[score_Tmp2=-512] ~ ~-0.512 ~
scoreboard players add @s[score_Tmp2=-512] Tmp2 512
tp @s[score_Tmp2=-256] ~ ~-0.256 ~
scoreboard players add @s[score_Tmp2=-256] Tmp2 256
tp @s[score_Tmp2=-128] ~ ~-0.128 ~
scoreboard players add @s[score_Tmp2=-128] Tmp2 128
tp @s[score_Tmp2=-64] ~ ~-0.064 ~
scoreboard players add @s[score_Tmp2=-64] Tmp2 64
tp @s[score_Tmp2=-32] ~ ~-0.032 ~
scoreboard players add @s[score_Tmp2=-32] Tmp2 32
tp @s[score_Tmp2=-16] ~ ~-0.016 ~
scoreboard players add @s[score_Tmp2=-16] Tmp2 16
tp @s[score_Tmp2=-8] ~ ~-0.008 ~
scoreboard players add @s[score_Tmp2=-8] Tmp2 8
tp @s[score_Tmp2=-4] ~ ~-0.004 ~
scoreboard players add @s[score_Tmp2=-4] Tmp2 4
tp @s[score_Tmp2=-2] ~ ~-0.002 ~
scoreboard players add @s[score_Tmp2=-2] Tmp2 2
tp @s[score_Tmp2=-1] ~ ~-0.001 ~

# Z negative

tp @s[score_Tmp3=-512] ~ ~ ~-0.512
scoreboard players add @s[score_Tmp3=-512] Tmp3 512
tp @s[score_Tmp3=-256] ~ ~ ~-0.256
scoreboard players add @s[score_Tmp3=-256] Tmp3 256
tp @s[score_Tmp3=-128] ~ ~ ~-0.128
scoreboard players add @s[score_Tmp3=-128] Tmp3 128
tp @s[score_Tmp3=-64] ~ ~ ~-0.064
scoreboard players add @s[score_Tmp3=-64] Tmp3 64
tp @s[score_Tmp3=-32] ~ ~ ~-0.032
scoreboard players add @s[score_Tmp3=-32] Tmp3 32
tp @s[score_Tmp3=-16] ~ ~ ~-0.016
scoreboard players add @s[score_Tmp3=-16] Tmp3 16
tp @s[score_Tmp3=-8] ~ ~ ~-0.008
scoreboard players add @s[score_Tmp3=-8] Tmp3 8
tp @s[score_Tmp3=-4] ~ ~ ~-0.004
scoreboard players add @s[score_Tmp3=-4] Tmp3 4
tp @s[score_Tmp3=-2] ~ ~ ~-0.002
scoreboard players add @s[score_Tmp3=-2] Tmp3 2
tp @s[score_Tmp3=-1] ~ ~ ~-0.001

#kill @s[score_Tmp4_min=0,score_Tmp4=0,score_Tmp5_min=0,score_Tmp5=0,score_Tmp6_min=0,score_Tmp6=0]
execute @s[tag=DebugMovement] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @s[tag=DebugMovement] ~ ~ ~ summon Falling_Block ~ ~ ~ {Block:"minecraft:bedrock",Time:1,NoGravity:1,Tags:["Permanent"]}

scoreboard players tag @s[score_Tmp4_min=1] add CollisionContinue
scoreboard players tag @s[score_Tmp5_min=1] add CollisionContinue
scoreboard players tag @s[score_Tmp6_min=1] add CollisionContinue
scoreboard players tag @s[score_Tmp4=-1] add CollisionContinue
scoreboard players tag @s[score_Tmp5=-1] add CollisionContinue
scoreboard players tag @s[score_Tmp6=-1] add CollisionContinue
execute @s[tag=CollisionContinue] ~ ~ ~ function Gunivers-Lib:Entity/Set/MovementV2Loop