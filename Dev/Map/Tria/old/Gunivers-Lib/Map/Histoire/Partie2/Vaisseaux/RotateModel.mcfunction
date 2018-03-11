#Detection de l'inclinaison a appliquer (Dans la fonction Vaisseaux/Vol)
scoreboard players tag @e[tag=PlaneT] add PlaneNotTurn
scoreboard players tag @e[tag=PlaneTurnR] remove PlaneNotTurn
scoreboard players tag @e[tag=PlaneTurnL] remove PlaneNotTurn

#Modification de l'orientation sur l'axe vertical + changement de l'inclinaison en virage
entitydata @e[tag=PlaneNotTurn,score_PlaneTheta_min=0,score_PlaneTheta=36] {Pose:{Head:[-72f,0f,0f]}}
entitydata @e[tag=PlaneNotTurn,score_PlaneTheta_min=37,score_PlaneTheta=72] {Pose:{Head:[-36f,0f,0f]}}
entitydata @e[tag=PlaneNotTurn,score_PlaneTheta_min=73,score_PlaneTheta=108] {Pose:{Head:[0f,0f,0f]}}
entitydata @e[tag=PlaneNotTurn,score_PlaneTheta_min=109,score_PlaneTheta=144] {Pose:{Head:[36f,0f,0f]}}
entitydata @e[tag=PlaneNotTurn,score_PlaneTheta_min=145,score_PlaneTheta=180] {Pose:{Head:[72f,0f,0f]}}
entitydata @e[tag=PlaneTurnR,score_PlaneTheta_min=0,score_PlaneTheta=36] {Pose:{Head:[-72f,0f,30f]}}
entitydata @e[tag=PlaneTurnR,score_PlaneTheta_min=37,score_PlaneTheta=72] {Pose:{Head:[-36f,0f,30f]}}
entitydata @e[tag=PlaneTurnR,score_PlaneTheta_min=73,score_PlaneTheta=108] {Pose:{Head:[0f,0f,30f]}}
entitydata @e[tag=PlaneTurnR,score_PlaneTheta_min=109,score_PlaneTheta=144] {Pose:{Head:[36f,0f,30f]}}
entitydata @e[tag=PlaneTurnR,score_PlaneTheta_min=145,score_PlaneTheta=180] {Pose:{Head:[72f,0f,30f]}}
entitydata @e[tag=PlaneTurnL,score_PlaneTheta_min=0,score_PlaneTheta=36] {Pose:{Head:[-72f,0f,-30f]}}
entitydata @e[tag=PlaneTurnL,score_PlaneTheta_min=37,score_PlaneTheta=72] {Pose:{Head:[-36f,0f,-30f]}}
entitydata @e[tag=PlaneTurnL,score_PlaneTheta_min=73,score_PlaneTheta=108] {Pose:{Head:[0f,0f,-30f]}}
entitydata @e[tag=PlaneTurnL,score_PlaneTheta_min=109,score_PlaneTheta=144] {Pose:{Head:[36f,0f,-30f]}}
entitydata @e[tag=PlaneTurnL,score_PlaneTheta_min=145,score_PlaneTheta=180] {Pose:{Head:[72f,0f,-30f]}}
scoreboard players tag @e[tag=PlaneTurnR] remove PlaneTurnR
scoreboard players tag @e[tag=PlaneTurnL] remove PlaneTurnL