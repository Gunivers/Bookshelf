scoreboard players tag @e remove DirCollision

scoreboard players tag @e[tag=DirMoving,score_DirCollision_min=1] add DirCollisionZ
scoreboard players tag @e[score_DirCollision_min=1,score_DirCalcZ=0,score_DirCalcZ_min=0] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ_min=1,score_DirCalcZ=499] ~ ~ ~ detect ~ ~ ~0.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ_min=500,score_DirCalcZ=999] ~ ~ ~ detect ~ ~ ~0.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~1.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ_min=1000,score_DirCalcZ=1499] ~ ~ ~ detect ~ ~ ~0.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~1.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~2.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ_min=1500] ~ ~ ~ detect ~ ~ ~0.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~1.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~2.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~3.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ=-1,score_DirCalcZ_min=-499] ~ ~ ~ detect ~ ~ ~-0.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ=-500,score_DirCalcZ_min=-999] ~ ~ ~ detect ~ ~ ~-0.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~-1.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ=-1000,score_DirCalcZ_min=-1499] ~ ~ ~ detect ~ ~ ~-0.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~-1.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~-2.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
execute @e[score_DirCollision_min=1,score_DirCalcZ=-1500] ~ ~ ~ detect ~-0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~-1.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~-2.5 air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~ ~-3.5 air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionZ
scoreboard players operation @e[score_DirCollision_min=1,score_DirCollision=3,tag=DirCollisionZ] DirZ *= Neg Constant
scoreboard players set @e[score_DirCollision_min=4,score_DirCollision=4,tag=DirCollisionZ] DirZ 0
kill @e[type=!Player,score_DirCollision_min=6,score_DirCollision=6,tag=DirCollisionZ]
scoreboard players tag @e[score_DirCollision_min=5,score_DirCollision=6,tag=DirCollisionZ] remove DirMoving
#execute @e[score_DirCollision_min=1,tag=DirCollisionZ] ~ ~ ~ /playsound minecraft:item.armor.equip_iron record @a[r=30] ~ ~ ~ 0.5 2 0.1
scoreboard players tag @e[score_DirCollision_min=1,tag=DirCollisionZ] add DirCollision

scoreboard players tag @e[tag=DirMoving,score_DirCollision_min=1] add DirCollisionX
scoreboard players tag @e[score_DirCollision_min=1,score_DirCalcX=0,score_DirCalcX_min=0] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX_min=1,score_DirCalcX=499] ~ ~ ~ detect ~0.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX_min=500,score_DirCalcX=999] ~ ~ ~ detect ~0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~1.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX_min=1000,score_DirCalcX=1499] ~ ~ ~ detect ~0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~1.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~2.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX_min=1500] ~ ~ ~ detect ~0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~1.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~2.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~3.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX=-1,score_DirCalcX_min=-499] ~ ~ ~ detect ~-0.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX=-500,score_DirCalcX_min=-999] ~ ~ ~ detect ~-0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~-1.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX=-1000,score_DirCalcX_min=-1499] ~ ~ ~ detect ~-0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~-1.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~-2.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
execute @e[score_DirCollision_min=1,score_DirCalcX=-1500] ~ ~ ~ detect ~-0.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~-1.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~-2.5 ~ ~ air 0 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~-3.5 ~ ~ air 0 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionX
scoreboard players operation @e[score_DirCollision_min=1,score_DirCollision=3,tag=DirCollisionX] DirX *= Neg Constant
scoreboard players set @e[score_DirCollision_min=4,score_DirCollision=4,tag=DirCollisionX] DirX 0
kill @e[type=!Player,score_DirCollision_min=6,score_DirCollision=6,tag=DirCollisionX]
scoreboard players tag @e[score_DirCollision_min=5,score_DirCollision=6,tag=DirCollisionX] remove DirMoving
#execute @e[score_DirCollision_min=1,tag=DirCollisionX] ~ ~ ~ /playsound minecraft:item.armor.equip_iron record @a[r=30] ~ ~ ~ 0.5 2 0.1
scoreboard players tag @e[score_DirCollision_min=1,tag=DirCollisionX] add DirCollision

scoreboard players tag @e[tag=DirMoving,score_DirCollision_min=1] add DirCollisionY
scoreboard players tag @e[score_DirCollision_min=1,score_DirCalcY=0,score_DirCalcY_min=0] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY_min=1,score_DirCalcY=499] ~ ~ ~ detect ~ ~0.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY_min=500,score_DirCalcY=999] ~ ~ ~ detect ~ ~0.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~1.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY_min=1000,score_DirCalcY=1499] ~ ~ ~ detect ~ ~0.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~1.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~2.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY_min=1500] ~ ~ ~ detect ~ ~0.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~1.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~2.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~3.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY=-1,score_DirCalcY_min=-499] ~ ~ ~ detect ~ ~-0.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY=-500,score_DirCalcY_min=-999] ~ ~ ~ detect ~ ~-0.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~-1.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY=-1000,score_DirCalcY_min=-1499] ~ ~ ~ detect ~ ~-0.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~-1.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~-2.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
execute @e[score_DirCollision_min=1,score_DirCalcY=-1500] ~ ~ ~ detect ~ ~-0.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~-1.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~-2.5 ~ air -1 /execute @e[score_DirCollision_min=1,c=1] ~ ~ ~ detect ~ ~-3.5 ~ air -1 /scoreboard players tag @e[score_DirCollision_min=1,c=1] remove DirCollisionY
scoreboard players operation @e[score_DirCollision_min=1,score_DirCollision=1,tag=DirCollisionY] DirY *= Neg Constant
scoreboard players set @e[score_DirCollision_min=2,score_DirCollision=4,tag=DirCollisionY] DirY 0
kill @e[type=!Player,score_DirCollision_min=6,score_DirCollision=6,tag=DirCollisionY]
scoreboard players tag @e[score_DirCollision_min=5,score_DirCollision=6,tag=DirCollisionY] remove DirMoving
#execute @e[score_DirCollision_min=1,tag=DirCollisionY] ~ ~ ~ /playsound minecraft:item.armor.equip_iron record @a[r=30] ~ ~ ~ 0.5 2 0.1
scoreboard players tag @e[score_DirCollision_min=1,tag=DirCollisionY] add DirCollision