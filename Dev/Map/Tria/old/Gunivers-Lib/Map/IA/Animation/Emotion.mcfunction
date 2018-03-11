#Lance une animation en fonction du score EmotionTime

#Tag Emotion sur les entités qui utilisent le systeme (Aucun trouvé = systeme inactif)

#-2:               Réinitialisation
#-1:               Rien
#0 à 9998:         Parle              (Mouvements de tete)                EmotionTime = Temps en ticks           EmotionTime = 9 999: Temps infini
#10 000 à 19 998:  Enervement         (Mouvements de tete et de bras)     EmotionTime-10000 = Temps en ticks     EmotionTime = 19 999: Temps infini

#Animation Parole
execute @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0] ~ ~ ~ scoreboard players operation @s SelectedAnim = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=6] Random
#Anim sur 3 ticks
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=1,score_SelectedAnim=1] {Pose:{Head:[5f,5f,1f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=1,score_EmotionAnim=1,score_SelectedAnim_min=1,score_SelectedAnim=1] {Pose:{Head:[2f,2f,1f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=2,score_EmotionAnim=2,score_SelectedAnim_min=1,score_SelectedAnim=1] {Pose:{Head:[5f,5f,1f]}}
#Mouvements sur 1 tick
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=2,score_SelectedAnim=2] {Pose:{Head:[-2f,5f,-1f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=3,score_SelectedAnim=3] {Pose:{Head:[3f,-2f,4f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=4,score_SelectedAnim=4] {Pose:{Head:[-1f,-5f,-3f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=5,score_SelectedAnim=5] {Pose:{Head:[-3f,1f,-2f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=6,score_SelectedAnim=6] {Pose:{Head:[1f,-3f,3f]}}

execute @e[tag=Emotion,score_EmotionTime_min=0,score_EmotionTime=9999,score_EmotionAnim_min=0,score_EmotionAnim=0] ~ ~ ~ scoreboard players operation @s EmotionAnim = @r[type=armor_stand,tag=Random,score_Random_min=3,score_Random=4] Random


#Animation Enervement
execute @e[tag=Emotion,score_EmotionTime_min=10000,score_EmotionTime=19999,score_EmotionAnim_min=0,score_EmotionAnim=0] ~ ~ ~ scoreboard players operation @s SelectedAnim = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=2] Random

entitydata @e[tag=Emotion,score_EmotionTime_min=10000,score_EmotionTime=19999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=1,score_SelectedAnim=1] {Pose:{RightArm:[220f,0f,0f],LeftArm:[220f,0f,0f]}}
entitydata @e[tag=Emotion,score_EmotionTime_min=10000,score_EmotionTime=19999,score_EmotionAnim_min=0,score_EmotionAnim=0,score_SelectedAnim_min=2,score_SelectedAnim=2] {Pose:{RightArm:[200f,0f,0f],LeftArm:[200f,0f,0f]}}

execute @e[tag=Emotion,score_EmotionTime_min=10000,score_EmotionTime=19999,score_EmotionAnim_min=0,score_EmotionAnim=0] ~ ~ ~ scoreboard players operation @s EmotionAnim = @r[type=armor_stand,tag=Random,score_Random_min=3,score_Random=4] Random


scoreboard players remove @e[tag=Emotion,score_EmotionAnim_min=1] EmotionAnim 1
scoreboard players add @e[tag=Emotion] EmotionAnim 0
scoreboard players add @e[tag=Emotion] EmotionTime 0
#Si les 4 derniers chiffres sont 0000, réinitialise, si c'est 9999, empeche le timer de bouger
scoreboard players tag @e[tag=Emotion] add RunEmotTime
execute @e[tag=Emotion] ~ ~ ~ scoreboard players operation @s Tmp = @s EmotionTime
execute @e[tag=Emotion] ~ ~ ~ scoreboard players operation @s Tmp %= 10000 Constant
scoreboard players set @e[tag=Emotion,score_Tmp_min=0,score_Tmp=0] EmotionTime -2
scoreboard players tag @e[tag=Emotion,score_Tmp_min=9999,score_Tmp=9999] remove RunEmotTime

entitydata @e[tag=Emotion,score_EmotionTime_min=-2,score_EmotionTime=-2] {Pose:{Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
scoreboard players set @e[tag=Emotion,score_EmotionTime_min=-2,score_EmotionTime=-2] EmotionTime -1
scoreboard players remove @e[tag=RunEmotTime,score_EmotionTime_min=1] EmotionTime 1

