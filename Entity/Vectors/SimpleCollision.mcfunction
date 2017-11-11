# SetVectors

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors, Tmp3, Constant

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - Collision (score dummy)

# Ouput values:
# - None

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

#----------------#
# Collision on X #
#----------------#

scoreboard players tag @s[tag=DirMoving,score_Collision_min=1] add CollisionX
scoreboard players tag @s[score_Collision_min=1,score_Tmp1=0,score_Tmp1_min=0] remove CollisionX

# X positive
execute @s[score_Tmp1_min=1,score_Tmp1=499] ~ ~ ~ detect ~0.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp1_min=500,score_Tmp1=999] ~ ~ ~ detect ~0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~1.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp1_min=1000,score_Tmp1=1499] ~ ~ ~ detect ~0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~1.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~2.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp1_min=1500] ~ ~ ~ detect ~0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~1.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~2.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~3.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX

# X negative
execute @s[score_Tmp1=-1,score_Tmp1_min=-499] ~ ~ ~ detect ~-0.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp1=-500,score_Tmp1_min=-999] ~ ~ ~ detect ~-0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~-1.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp1=-1000,score_Tmp1_min=-1499] ~ ~ ~ detect ~-0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~-1.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~-2.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp1=-1500] ~ ~ ~ detect ~-0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~-1.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~-2.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~-3.5 ~ ~ air 0 scoreboard players tag @s remove CollisionX

scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionX] DirX *= Neg Constant
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionX] DirX 0
kill @s[type=!Player,score_Collision_min=6,score_Collision=6,tag=CollisionX]
scoreboard players tag @s[score_Collision_min=5,score_Collision=6,tag=CollisionX] remove DirMoving
scoreboard players tag @s[score_Collision_min=1,tag=CollisionX] add Collision


#----------------#
# Collision on Y #
#----------------#

scoreboard players tag @s[tag=DirMoving,score_Collision_min=1] add CollisionY
scoreboard players tag @s[score_Collision_min=1,score_Tmp2=0,score_Tmp2_min=0] remove CollisionY

# Y positive
execute @s[score_Tmp2_min=1,score_Tmp2=499] ~ ~ ~ detect ~ ~0.5 ~ air -1 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2_min=500,score_Tmp2=999] ~ ~ ~ detect ~ ~0.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~1.5 ~ air -1 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2_min=1000,score_Tmp2=1499] ~ ~ ~ detect ~ ~0.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~1.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~2.5 ~ air -1 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2_min=1500] ~ ~ ~ detect ~ ~0.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~1.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~2.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~3.5 ~ air -1 scoreboard players tag @s remove CollisionY

# Y negative
execute @s[score_Tmp2=-1,score_Tmp2_min=-499] ~ ~ ~ detect ~ ~-0.5 ~ air -1 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2=-500,score_Tmp2_min=-999] ~ ~ ~ detect ~ ~-0.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~-1.5 ~ air -1 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2=-1000,score_Tmp2_min=-1499] ~ ~ ~ detect ~ ~-0.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~-1.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~-2.5 ~ air -1 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2=-1500] ~ ~ ~ detect ~ ~-0.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~-1.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~-2.5 ~ air -1 execute @s ~ ~ ~ detect ~ ~-3.5 ~ air -1 scoreboard players tag @s remove CollisionY

scoreboard players operation @s[score_Collision_min=1,score_Collision=1,tag=CollisionY] DirY *= Neg Constant
scoreboard players set @s[score_Collision_min=2,score_Collision=4,tag=CollisionY] DirY 0
kill @s[type=!Player,score_Collision_min=6,score_Collision=6,tag=CollisionY]
scoreboard players tag @s[score_Collision_min=5,score_Collision=6,tag=CollisionY] remove DirMoving
scoreboard players tag @s[score_Collision_min=1,tag=CollisionY] add Collision


#----------------#
# Collision on Z #
#----------------#

scoreboard players tag @s[tag=DirMoving,score_Collision_min=1] add CollisionZ
scoreboard players tag @s[score_Collision_min=1,score_Tmp3=0,score_Tmp3_min=0] remove CollisionZ

# Z positive
execute @s[score_Tmp3_min=1,score_Tmp3=499] ~ ~ ~ detect ~ ~ ~0.5 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3_min=500,score_Tmp3=999] ~ ~ ~ detect ~ ~ ~0.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~1.5 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3_min=1000,score_Tmp3=1499] ~ ~ ~ detect ~ ~ ~0.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~1.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~2.5 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3_min=1500] ~ ~ ~ detect ~ ~ ~0.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~1.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~2.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~3.5 air 0 scoreboard players tag @s remove CollisionZ
 
# Z negative
execute @s[score_Tmp3=-1,score_Tmp3_min=-499] ~ ~ ~ detect ~ ~ ~-0.5 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3=-500,score_Tmp3_min=-999] ~ ~ ~ detect ~ ~ ~-0.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~-1.5 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3=-1000,score_Tmp3_min=-1499] ~ ~ ~ detect ~ ~ ~-0.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~-1.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~-2.5 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3=-1500] ~ ~ ~ detect ~-0.5 ~ ~ air 0 execute @s ~ ~ ~ detect ~ ~ ~-1.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~-2.5 air 0 execute @s ~ ~ ~ detect ~ ~ ~-3.5 air 0 scoreboard players tag @s remove CollisionZ

scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionZ] DirZ *= Neg Constant
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionZ] DirZ 0
kill @s[type=!Player,score_Collision_min=6,score_Collision=6,tag=CollisionZ]
scoreboard players tag @s[score_Collision_min=5,score_Collision=6,tag=CollisionZ] remove DirMoving
scoreboard players tag @s[score_Collision_min=1,tag=CollisionZ] add Collision

