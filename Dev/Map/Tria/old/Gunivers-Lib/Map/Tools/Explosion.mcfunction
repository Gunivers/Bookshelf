#Explosions

#Initialisation
scoreboard players set @s[tag=!InitExpl] Tmp 0
execute @s[tag=!InitExpl] ~ ~ ~ scoreboard players set @s[tag=BigExpl] Tmp 1
execute @s[tag=!InitExpl] ~ ~ ~ scoreboard players set @s[tag=HugeExpl] Tmp 2
scoreboard players set @s[tag=!InitExpl] Tmp2 0
execute @s[tag=!InitExpl] ~ ~ ~ scoreboard players set @s[tag=ExplSound2] Tmp2 1
execute @s[tag=!InitExpl] ~ ~ ~ scoreboard players set @s[tag=ExplSound3] Tmp2 2
scoreboard players set @s[score_Tmp_min=0,score_Tmp=1,tag=!InitExpl] TimerTool2 0
scoreboard players set @s[score_Tmp_min=2,score_Tmp=2,tag=!InitExpl] TimerTool2 5
scoreboard players tag @s add InitExpl


#Visuel
execute @s[score_Tmp_min=0,score_Tmp=0] ~ ~ ~ particle hugeexplosion ~ ~ ~ 0 0 0 0.1 2 force
execute @s[score_Tmp_min=0,score_Tmp=0] ~ ~ ~ particle smoke ~ ~ ~ 1 1 1 0.2 60 force
execute @s[score_Tmp_min=0,score_Tmp=0] ~ ~ ~ particle blockcrack ~ ~ ~ 1.5 0 1.5 0.1 40 force @a 173

execute @s[score_Tmp_min=1,score_Tmp=1] ~ ~ ~ particle hugeexplosion ~ ~ ~ 2 2 2 0.1 10 force
execute @s[score_Tmp_min=1,score_Tmp=1] ~ ~ ~ particle smoke ~ ~ ~ 2 2 2 0.2 100 force
execute @s[score_Tmp_min=1,score_Tmp=1] ~ ~ ~ particle blockcrack ~ ~ ~ 2 0 2 0.1 80 force @a 173

execute @s[score_Tmp_min=2,score_Tmp=2] ~ ~ ~ particle hugeexplosion ~ ~ ~ 3.5 3.5 3.5 0.1 20 force
execute @s[score_Tmp_min=2,score_Tmp=2] ~ ~ ~ particle smoke ~ ~ ~ 4 4 4 0.2 300 force
execute @s[score_Tmp_min=2,score_Tmp=2] ~ ~ ~ particle blockcrack ~ ~ ~ 4 0 4 0.1 120 force @a 173


#Sons
execute @s[score_Tmp2_min=0,score_Tmp2=0] ~ ~ ~ playsound

execute @s[score_Tmp2_min=1,score_Tmp2=1] ~ ~ ~ playsound

execute @s[score_Tmp2_min=2,score_Tmp2=2] ~ ~ ~ playsound


#Degats
scoreboard players remove @e[score_Health_min=0,tag=!NoExplDamage,r=6] Health 6
scoreboard players remove @e[score_Health_min=0,tag=!NoExplDamage,r=5] Health 6
scoreboard players remove @e[score_Health_min=0,tag=!NoExplDamage,r=4] Health 6
scoreboard players remove @e[score_Health_min=0,tag=!NoExplDamage,r=3] Health 6
scoreboard players remove @e[score_Health_min=0,tag=!NoExplDamage,r=2] Health 6
scoreboard players remove @e[score_Health_min=0,tag=!NoExplDamage,r=1] Health 6

execute @s[tag=Root,score_IsControled_min=1] ~ ~1 ~ execute @p[score_InVehicle_min=1,r=2] ~ ~ ~ function Gunivers-Lib:Map/Autres/FinGame
execute @s[tag=Root,score_IsControled_min=1] ~ ~ ~ scoreboard players set @e[tag=PlaneH,r=2,c=1] CanBeAlive 0


#Animation Onde de Choc
scoreboard players tag @a[r=10,score_InVehicle=0] add AnimExplode
scoreboard players set @a[r=10] TimerTool 3
scoreboard players set @a[r=7] TimerTool 6

#Kill
kill @s[score_TimerTool2=0,tag=!DontKillExpl]
scoreboard players tag @s[score_TimerTool2=0,tag=DontKillExpl] remove Explode
scoreboard players tag @s[score_TimerTool2=0,tag=DontKillExpl] remove DontKillExpl
scoreboard players remove @s TimerTool2 1


