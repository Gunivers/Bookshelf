#Vers la droite
entitydata @e[score_TimelineLook_min=98,score_TimelineLook=98] {Pose:{Head:[0f,10f,0f]}}
entitydata @e[score_TimelineLook_min=96,score_TimelineLook=96] {Pose:{Head:[0f,20f,0f]}}
entitydata @e[score_TimelineLook_min=94,score_TimelineLook=94] {Pose:{Head:[0f,30f,0f]}}
entitydata @e[score_TimelineLook_min=92,score_TimelineLook=92] {Pose:{Head:[0f,40f,0f]}}
entitydata @e[score_TimelineLook_min=90,score_TimelineLook=90] {Pose:{Head:[0f,50f,0f]}}
entitydata @e[score_TimelineLook_min=88,score_TimelineLook=88] {Pose:{Head:[0f,60f,0f]}}

#Vers le centre
entitydata @e[score_TimelineLook_min=61,score_TimelineLook=61] {Pose:{Head:[0f,50f,0f]}}
entitydata @e[score_TimelineLook_min=59,score_TimelineLook=59] {Pose:{Head:[0f,40f,0f]}}
entitydata @e[score_TimelineLook_min=57,score_TimelineLook=57] {Pose:{Head:[0f,30f,0f]}}
entitydata @e[score_TimelineLook_min=55,score_TimelineLook=55] {Pose:{Head:[0f,20f,0f]}}
entitydata @e[score_TimelineLook_min=53,score_TimelineLook=53] {Pose:{Head:[0f,10f,0f]}}
entitydata @e[score_TimelineLook_min=51,score_TimelineLook=51] {Pose:{Head:[0f,0f,0f]}}

scoreboard players set @e[score_TimelineLook_min=50,score_TimelineLook=50,tag=OnlyRight] TimelineLook 0
scoreboard players tag @e[score_TimelineLook=0] remove OnlyRight

#Vers la gauche
entitydata @e[score_TimelineLook_min=49,score_TimelineLook=49] {Pose:{Head:[0f,-10f,0f]}}
entitydata @e[score_TimelineLook_min=47,score_TimelineLook=47] {Pose:{Head:[0f,-20f,0f]}}
entitydata @e[score_TimelineLook_min=45,score_TimelineLook=45] {Pose:{Head:[0f,-30f,0f]}}
entitydata @e[score_TimelineLook_min=43,score_TimelineLook=43] {Pose:{Head:[0f,-40f,0f]}}
entitydata @e[score_TimelineLook_min=41,score_TimelineLook=41] {Pose:{Head:[0f,-50f,0f]}}
entitydata @e[score_TimelineLook_min=39,score_TimelineLook=39] {Pose:{Head:[0f,-60f,0f]}}

#Vers le centre
entitydata @e[score_TimelineLook_min=12,score_TimelineLook=12] {Pose:{Head:[0f,-50f,0f]}}
entitydata @e[score_TimelineLook_min=10,score_TimelineLook=10] {Pose:{Head:[0f,-40f,0f]}}
entitydata @e[score_TimelineLook_min=8,score_TimelineLook=8] {Pose:{Head:[0f,-30f,0f]}}
entitydata @e[score_TimelineLook_min=6,score_TimelineLook=6] {Pose:{Head:[0f,-20f,0f]}}
entitydata @e[score_TimelineLook_min=4,score_TimelineLook=4] {Pose:{Head:[0f,-10f,0f]}}
entitydata @e[score_TimelineLook_min=2,score_TimelineLook=2] {Pose:{Head:[0f,0f,0f]}}

scoreboard players remove @e[score_TimelineLook_min=1] TimelineLook 1
scoreboard players tag @e[score_TimelineLook_min=0,score_TimelineLook=0] add RunMovesTimer




