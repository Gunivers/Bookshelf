execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991] ~ ~ ~ /particle largesmoke ~ ~1 ~ 0 0.5 0 1 100 force

execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=999,score_Spell3=999,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=997,score_Spell3=997,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=995,score_Spell3=995,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=993,score_Spell3=993,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,score_Spell3=991,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=1] EffDamage 1003
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=1] TouchBy 11
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=990] ~ ~ ~ /playsound entity.endermen.hurt record @a[r=10] ~ ~ ~ 2 2 1
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,score_Spell3=991,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=993,score_Spell3=993,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=995,score_Spell3=995,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=997,score_Spell3=997,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=999,score_Spell3=999,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=1] EffDamage 1003
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=1] TouchBy 11