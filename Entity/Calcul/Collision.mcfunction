# Calcul Collision

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Input: Vectors, Tmp3

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# Output values:
# - CollisionX (tag)
# - CollisionY (tag)
# - CollisionZ (tag)

scoreboard players operation @s Tmp = @s VectorX
scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @s Tmp3 = @s VectorZ

scoreboard players operation @s Tmp *= @s VectorSpeed
scoreboard players operation @s Tmp2 *= @s VectorSpeed
scoreboard players operation @s Tmp3 *= @s VectorSpeed

scoreboard players remove @e CollisionX
scoreboard players remove @e CollisionY
scoreboard players remove @e CollisionZ
scoreboard players remove @e Collision

execute @s[score_Tmp_min=1] ~ ~ ~ detect ~0.001 ~ ~ scoreboard players remove @s Tmp 1
execute @s[score_Tmp_min=99999] ~ ~ ~ detect ~1 ~ ~ air 0 scoreboard players remove @s Tmp 99999
execute @s[score_Tmp_min=99999] ~ ~ ~ detect ~2 ~ ~ air 0 scoreboard players remove @s Tmp 99999
execute @s[score_Tmp_min=99999] ~ ~ ~ detect ~3 ~ ~ air 0 scoreboard players remove @s Tmp 99999
execute @s[score_Tmp_min=99999] ~ ~ ~ detect ~4 ~ ~ air 0 scoreboard players remove @s Tmp 99999

scoreboard players tag @e[score_Tmp_min=1] add CollisionX



execute @s[score_Tmp2_min=1] ~ ~ ~ detect ~ ~0.001 ~ scoreboard players remove @s Tmp2 1
execute @s[score_Tmp2_min=99999] ~ ~ ~ detect ~ ~1 ~ air 0 scoreboard players remove @s Tmp2 99999
execute @s[score_Tmp2_min=99999] ~ ~ ~ detect ~ ~2 ~ air 0 scoreboard players remove @s Tmp2 99999
execute @s[score_Tmp2_min=99999] ~ ~ ~ detect ~ ~3 ~ air 0 scoreboard players remove @s Tmp2 99999
execute @s[score_Tmp2_min=99999] ~ ~ ~ detect ~ ~4 ~ air 0 scoreboard players remove @s Tmp2 99999

scoreboard players tag @e[score_Tmp2_min=1] add CollisionY



execute @s[score_Tmp3_min=1] ~ ~ ~ detect ~ ~ ~0.001 scoreboard players remove @s Tmp3 1
execute @s[score_Tmp3_min=99999] ~ ~ ~ detect ~ ~ ~1 air 0 scoreboard players remove @s Tmp3 99999
execute @s[score_Tmp3_min=99999] ~ ~ ~ detect ~ ~ ~2 air 0 scoreboard players remove @s Tmp3 99999
execute @s[score_Tmp3_min=99999] ~ ~ ~ detect ~ ~ ~3 air 0 scoreboard players remove @s Tmp3 99999
execute @s[score_Tmp3_min=99999] ~ ~ ~ detect ~ ~ ~4 air 0 scoreboard players remove @s Tmp3 99999

scoreboard players tag @e[score_Tmp3_min=1] add CollisionZ

scoreboard players tag @s[tag=CollisionX] add Collision
scoreboard players tag @s[tag=CollisionY] add Collision
scoreboard players tag @s[tag=CollisionZ] add Collision