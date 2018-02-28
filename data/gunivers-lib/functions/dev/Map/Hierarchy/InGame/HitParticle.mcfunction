execute @a[score_TouchBy=-1] ~ ~ ~ /scoreboard players operation @s TouchBy *= Neg Constant

execute @a[score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /scoreboard players operation @s Tmp = @s TouchBy
scoreboard players operation @a[score_InGame_min=1,score_TakeDamage_min=1,m=2] Tmp %= 10 Constant

#Time
execute @a[score_Tmp_min=1,score_Tmp=1,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle depthsuspend ~ ~0.1 ~ 0.5 0.1 0.5 0 20 force
execute @a[score_Tmp_min=1,score_Tmp=1,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle witchMagic ~ ~0.1 ~ 0.5 0.1 0.5 0 20 force

#Burner
execute @a[score_Tmp_min=2,score_Tmp=2,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle largesmoke ~ ~0.1 ~ 0.5 0.1 0.5 0 10 force
execute @a[score_Tmp_min=2,score_Tmp=2,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle flame ~ ~0.1 ~ 0.5 0.1 0.5 0 20 force

#Thunder
execute @a[score_Tmp_min=3,score_Tmp=3,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle spell ~ ~0.1 ~ 0.5 0.1 0.5 0 10 force
execute @a[score_Tmp_min=3,score_Tmp=3,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle sweepAttack ~ ~0.1 ~ 0.5 0.1 0.5 0 3 force

#Freezer
execute @a[score_Tmp_min=4,score_Tmp=4,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle splash ~ ~0.1 ~ 0.5 0.1 0.5 0 40 force
execute @a[score_Tmp_min=4,score_Tmp=4,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle dripWater ~ ~0.1 ~ 0.5 0.1 0.5 0 20 force

#Wind Howler
execute @a[score_Tmp_min=5,score_Tmp=5,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle snowshovel ~ ~0.1 ~ 0.5 0.1 0.5 0 10 force
execute @a[score_Tmp_min=5,score_Tmp=5,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle cloud ~ ~0.1 ~ 0.5 0.1 0.5 0 10 force

#Invoker
execute @a[score_Tmp_min=6,score_Tmp=6,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle enchantmenttable ~ ~0.1 ~ 0.5 0.1 0.5 0 20 force
execute @a[score_Tmp_min=6,score_Tmp=6,score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /particle reddust ~ ~0.1 ~ 0.5 0.1 0.5 0.005 20 force