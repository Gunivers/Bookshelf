kill @e[type=egg,score_Timer_min=12]
execute @e[type=egg] ~ ~ ~ /teleport @e[type=armor_stand,tag=Mage,c=1] ~ ~ ~

execute @e[type=egg,score_Class=-1] ~ ~ ~ /particle mobSpell ~ ~ ~ 0.1 0 1.53 1
execute @e[type=egg,score_Class=-1] ~ ~ ~ /particle mobSpell ~ ~ ~ 0.1 0 1.53 1
execute @e[type=egg,score_Class_min=1] ~ ~ ~ /particle mobSpell ~ ~ ~ 2.55 1.3 0 1
execute @e[type=egg,score_Class_min=1] ~ ~ ~ /particle mobSpell ~ ~ ~ 2.55 1.3 0 1

execute @e[type=egg] ~ ~ ~ /scoreboard players set @e[type=armor_stand,tag=Mage,r=1,c=1] Timer 0

execute @e[type=armor_stand,tag=Mage,score_Timer_min=2] ~ ~ ~ /particle smoke ~ ~ ~ 0 0 0 0.3 100

execute @e[type=armor_stand,tag=Mage,score_Timer_min=2] ~ ~ ~ /playsound entity.firework.blast_far record @a[r=30] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,tag=Mage,score_Class_min=-10,score_Class=-10,score_Timer_min=2] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=3,score_EffResistance=1002] EffResistance 1002
execute @e[type=armor_stand,tag=Mage,score_Class_min=-10,score_Class=-10,score_Timer_min=2] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=3,score_EffDamage=2] EffDamage 2
execute @e[type=armor_stand,tag=Mage,score_Class_min=10,score_Class=10,score_Timer_min=2] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=3,score_EffResistance=1002] EffResistance 1002
execute @e[type=armor_stand,tag=Mage,score_Class_min=10,score_Class=10,score_Timer_min=2] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=3,score_EffDamage=2] EffDamage 2
execute @e[type=armor_stand,tag=Mage,score_Class_min=10,score_Class=10,score_Timer_min=2] ~ ~ ~ /scoreboard players operation @e[tag=AffectByOrange,r=4] TouchBy = @e[type=armor_stand,tag=Mage,r=1,c=1] TouchBy
execute @e[type=armor_stand,tag=Mage,score_Class_min=-10,score_Class=-10,score_Timer_min=2] ~ ~ ~ /scoreboard players operation @e[tag=AffectByBlue,r=4] TouchBy = @e[type=armor_stand,tag=Mage,r=1,c=1] TouchBy
kill @e[type=armor_stand,tag=Mage,score_Timer_min=2]