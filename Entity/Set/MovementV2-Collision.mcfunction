# NAME: Mise en movement d'une entité
# PATH: Gunivers-Lib: ... /MovementV2-Collision

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.12

# CHILD OF: Gunivers-Lib:Entity/Set/MovementV2

# CODE:

#----------------#
# Collision on X #
#----------------#

scoreboard players tag @s[score_Collision_min=1] add CollisionX
scoreboard players tag @s[score_Collision_min=1,score_Tmp=0,score_Tmp_min=0] remove CollisionX

execute @s[score_Tmp_min=1] ~ ~ ~ detect ~1 ~ ~ air 0 scoreboard players tag @s remove CollisionX
execute @s[score_Tmp=-1] ~ ~ ~ detect ~-1 ~ ~ air 0 scoreboard players tag @s remove CollisionX

scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionX] VectorX *= Neg Constant
scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionX] Tmp7 *= Neg Constant
scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionX] Tmp *= Neg Constant
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionX] VectorX 0
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionX] Tmp7 0
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionX] Tmp 0
kill @s[type=!Player,score_Collision_min=6,score_Collision=6,tag=CollisionX]
scoreboard players tag @s[score_Collision_min=5,score_Collision=6,tag=CollisionX] remove DirMoving
scoreboard players tag @s[score_Collision_min=1,tag=CollisionX] add Collision

#DEBUG
execute @s[tag=CollisionX] ~ ~ ~ execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~0.1 ~-0.5 ~-0.1 {Block:"minecraft:gold_block",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG


#----------------#
# Collision on Y #
#----------------#

scoreboard players tag @s[tag=DirMoving,score_Collision_min=1] add CollisionY
scoreboard players tag @s[score_Collision_min=1,score_Tmp2=0,score_Tmp2_min=0] remove CollisionY

execute @s[score_Tmp2_min=1] ~ ~ ~ detect ~ ~1 ~ air 0 scoreboard players tag @s remove CollisionY
execute @s[score_Tmp2=-1] ~ ~ ~ detect ~ ~-1 ~ air 0 scoreboard players tag @s remove CollisionY



scoreboard players operation @s[score_Collision_min=1,score_Collision=1,tag=CollisionY] VectorY *= Neg Constant
scoreboard players operation @s[score_Collision_min=1,score_Collision=1,tag=CollisionY] Tmp8 *= Neg Constant
scoreboard players operation @s[score_Collision_min=1,score_Collision=1,tag=CollisionY] Tmp2 *= Neg Constant
scoreboard players set @s[score_Collision_min=2,score_Collision=4,tag=CollisionY] VectorY 0
scoreboard players set @s[score_Collision_min=2,score_Collision=4,tag=CollisionY] Tmp8 0
scoreboard players set @s[score_Collision_min=2,score_Collision=4,tag=CollisionY] Tmp2 0
kill @s[type=!Player,score_Collision_min=6,score_Collision=6,tag=CollisionY]
scoreboard players tag @s[score_Collision_min=5,score_Collision=6,tag=CollisionY] remove DirMoving
scoreboard players tag @s[score_Collision_min=1,tag=CollisionY] add Collision

# DEBUG
execute @s[tag=CollisionY] ~ ~ ~ execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~ ~-0.5 ~0.1 {Block:"minecraft:iron_block",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG


#----------------#
# Collision on Z #
#----------------#

scoreboard players tag @s[tag=DirMoving,score_Collision_min=1] add CollisionZ
scoreboard players tag @s[score_Collision_min=1,score_Tmp3=0,score_Tmp3_min=0] remove CollisionZ

execute @s[score_Tmp3_min=1] ~ ~ ~ detect ~ ~ ~1 air 0 scoreboard players tag @s remove CollisionZ
execute @s[score_Tmp3=-1] ~ ~ ~ detect ~ ~ ~-1 air 0 scoreboard players tag @s remove CollisionZ

scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionZ] VectorZ *= Neg Constant
scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionZ] Tmp9 *= Neg Constant
scoreboard players operation @s[score_Collision_min=1,score_Collision=3,tag=CollisionZ] Tmp3 *= Neg Constant
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionZ] VectorZ 0
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionZ] Tmp9 0
scoreboard players set @s[score_Collision_min=4,score_Collision=4,tag=CollisionZ] Tmp3 0
kill @s[type=!Player,score_Collision_min=6,score_Collision=6,tag=CollisionZ]
scoreboard players tag @s[score_Collision_min=5,score_Collision=6,tag=CollisionZ] remove DirMoving
scoreboard players tag @s[score_Collision_min=1,tag=CollisionZ] add Collision

# DEBUG
execute @s[tag=CollisionZ] ~ ~ ~ execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~-0.1 ~-0.5 ~-0.1 {Block:"minecraft:diamond_block",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG

