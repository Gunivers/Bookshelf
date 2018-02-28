#Low life particle
execute @a[2000,100,2000,rm=50,score_health=10,score_InGame_min=1,m=2] ~ ~ ~ /particle blockcrack ~ ~1 ~ 0.3 0.5 0.3 0 1 force @a 152 0

#Give damage
execute @a[score_Damage_min=1,team=Orange] ~ ~ ~ /scoreboard players operation @p[team=Blue,score_TakeDamage_min=1] TouchBy = @s Class
execute @a[score_Damage_min=1,team=Blue] ~ ~ ~ /scoreboard players operation @p[team=Orange,score_TakeDamage_min=1] TouchBy = @s Class
scoreboard players set @a[score_Damage_min=1] Damage 0

#Take damage
execute @e[score_TakeDamage_min=1,m=2] ~ ~ ~ /particle blockcrack ~ ~1 ~ 0.3 0.5 0.3 0 20 force @a 152 0
execute @r[score_InGame_min=1,score_TakeDamage_min=1,m=2] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/ingame/hitparticle
scoreboard players remove @a[score_TakeDamage_min=1,score_Spell1_min=11,m=2,score_Class=10] Spell1 10
scoreboard players remove @a[score_TakeDamage_min=1,score_Spell2_min=11,m=2,score_Class=10] Spell2 10
scoreboard players remove @a[score_TakeDamage_min=1,score_Spell3_min=11,m=2,score_Class=10] Spell3 10
scoreboard players remove @a[score_TakeDamage_min=1,score_Spell3_min=11,m=2,score_Class=10] Mana 5
scoreboard players set @a[score_TakeDamage_min=1] TakeDamage 0

