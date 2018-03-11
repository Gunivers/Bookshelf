#Demande de l'aide
scoreboard players tag @e remove GoToRevive
execute @e[tag=WaitRev,c=1] ~ ~ ~ execute @e[type=!player,tag=!Dead,score_Id_min=1,score_Id=4,c=1] ~ ~ ~ scoreboard players tag @s add GoToRevive
execute @e[tag=WaitRev,c=1] ~ ~ ~ execute @e[type=!player,tag=!Dead,score_Id_min=1,score_Id=4,c=1] ~ ~ ~ execute @s[tag=!MessageSaid] ~ ~ ~ tellraw @a[tag=FRA,score_Id_min=1,score_Id=4] {"text":"<","extra":[{"selector":"@e[tag=GoToRevive,c=1]"},{"text":"> Je m'occupe de "},{"selector":"@e[tag=WaitRev,c=1]"},{"text":" !"}]}
execute @e[tag=WaitRev,c=1] ~ ~ ~ execute @e[type=!player,tag=!Dead,score_Id_min=1,score_Id=4,c=1] ~ ~ ~ execute @s[tag=!MessageSaid] ~ ~ ~ tellraw @a[tag=ENG,score_Id_min=1,score_Id=4] {"text":"<","extra":[{"selector":"@e[tag=GoToRevive,c=1]"},{"text":"> I revive "},{"selector":"@e[tag=WaitRev,c=1]"},{"text":" !"}]}
execute @e[tag=WaitRev,c=1] ~ ~ ~ execute @e[type=!player,tag=!Dead,score_Id_min=1,score_Id=4,c=1] ~ ~ ~ scoreboard players tag @s add MessageSaid
execute @e[tag=WaitRev] ~ ~ ~ scoreboard players tag @s[tag=MoveIA] add FinMouvement

#Temps de réanimation
scoreboard players set @e[score_Id_min=1,score_Id=4,tag=!Reviving] TimerTool 0
execute @e[tag=WaitRev] ~ ~ ~ execute @e[tag=!Dead,score_Id_min=1,score_Id=4,r=3,c=1] ~ ~ ~ scoreboard players set @s[tag=!Reviving] TimerTool 100
scoreboard players tag @e[score_TimerTool_min=100,score_TimerTool=100,score_Id_min=1,score_Id=4] add Reviving
scoreboard players tag @e[tag=Dead] add WaitRev
execute @e[tag=Reviving] ~ ~ ~ scoreboard players tag @e[tag=WaitRev,r=3,c=1] remove WaitRev
scoreboard players remove @e[tag=Reviving] TimerTool 1
execute @e[tag=Reviving,score_TimerTool=0] ~ ~ ~ execute @e[tag=Dead,r=3,c=1] ~ ~ ~ scoreboard players tag @s[tag=!WaitRev] add Revived
scoreboard players tag @e[tag=Reviving] remove GoToRevive
effect @a[tag=Reviving] slowness 1 255 true
scoreboard players set @e[tag=Reviving] Tmp 1
execute @e[tag=Dead] ~ ~ ~ scoreboard players set @e[tag=Reviving,score_Id_min=1,score_Id=4,r=3,c=1] Tmp 0
scoreboard players tag @e[tag=Reviving,score_Tmp_min=1] remove Reviving
scoreboard players set @e[tag=Dead] Tmp 1
execute @e[tag=Reviving,score_Id_min=1,score_Id=4] ~ ~ ~ scoreboard players set @e[tag=Dead,r=3,c=1] Tmp 0
scoreboard players tag @e[tag=Dead,score_Tmp_min=1] add WaitRev

#Réanimation
execute @e[tag=Revived] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/Revived

#Gestion du villageois
scoreboard players set @e[tag=RevVillager] Tmp 1
execute @e[tag=VillagerRev] ~ ~-2.5 ~ scoreboard players set @e[tag=RevVillager,r=2,c=1] Tmp 0
execute @e[tag=RevVillager,score_Tmp_min=1] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/AddVillagerRev
execute @e[tag=VillagerRev] ~ ~ ~ function Gunivers-Lib:Map/Tools/TpToSameId



