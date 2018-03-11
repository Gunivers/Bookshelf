#Mode Combat: Comportement des intelligences artificielles activé quand vous ajoutez le tag ModeCombat sur une IA.
#L'IA cherche des cibles: si une balle passe pas loin (si la balle vient d'un ennemi elle va directement tester la visibilité), si le joueur tire (seulement pour les IA jouables), si elle a le tag SearchTarget
#Quand elle trouve une cible, elle tire un faux projectile qui teste la visibilité. Si la cible est visible, elle commence a tirer. Pendant qu'elle tire, le veteur est mis a jour tous les 8 ticks si la cible est en mouvement, et un test de visibilité est relancé toute les 3 secondes.
#Si une IA jouable meurt, l'IA la plus proche ira automatiquement la revive.
#Si une balle venant d'un ennemi passe pas loin pendant le mouvement, ce mouvement est stoppé pendant 8 secondes pour tirer sur l'ennemi en question. Si aucun ennemi n'est trouvé, ce temps est réduit a 2 secondes.
#Si le joueur s'éloigne, les IA jouables s'en rapprochent.
#Si une IA jouable fait 2 tests de visibilités ratés consécutifs, elle va passer derriere le joueur et recommencer la recherche de cibles.
#Si la cible d'une IA meurt, elle va chercher une autre cible. 


#Changements de comportement -------- (A organiser, optimiser et débugger xD) -------------------------------------------------------------

#(Leirof tu la fermes, cette partie etait toute petite au début et puis elle a grossi avec les ajouts et les multiples patchs xD Mais elle sera probablement refaite)

#Autorise une recherche de cible si une balle passe proche + si l'IA est en mouvement la balle doit venir d'un ennemi
#Si la balle vient d'un ennemi l'IA regardera directement si cet ennemi est visible
#TimerTool3 empeche l'IA de bouger (avec par exemple l'appel constant des IA a terre)
#Lance une recherche de cibles si le joueur tire
scoreboard players tag @e[tag=MoveIA] remove SearchTarget
scoreboard players set @e Tmp 0
scoreboard players set @e[tag=ModeCombat] Tmp 1
scoreboard players set @e[tag=TireIA] Tmp 0
scoreboard players set @e[tag=WaitTestResult] Tmp 0
scoreboard players set @e[tag=SearchTarget] Tmp 0
scoreboard players set @e[tag=IsTargetVisible] Tmp 0
scoreboard players set @e[score_LineMoveTime_min=1] Tmp 0
scoreboard players set @e[tag=MoveIA] Tmp 2
scoreboard players set @e[tag=!ModeCombat] Tmp 0
scoreboard players set @e[score_Tmp_min=1] TargetId 0
execute @e[tag=Bullet] ~ ~ ~ scoreboard players tag @e[score_Tmp_min=1,r=8] add SearchTarget
execute @e[tag=Bullet,score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players operation @e[score_Tmp_min=1,score_Team_min=2,score_Team=2,r=8] TargetId = @s ShooterId
execute @e[tag=Bullet,score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @e[score_Tmp_min=1,score_Team_min=1,score_Team=1,r=8] TargetId = @s ShooterId
scoreboard players set @e[tag=SearchTarget,score_Tmp_min=1] TimerTool3 160
scoreboard players tag @e[score_TargetId_min=1,score_Tmp_min=1] remove SearchTarget
scoreboard players tag @e[score_TargetId_min=1,score_Tmp_min=1] add IsTargetVisible
execute @a[score_Id_min=1,score_Id=4,score_TimerTool2_min=80,score_TimerTool2=80] ~ ~ ~ scoreboard players tag @e[tag=!Dead,score_Tmp_min=1,score_Tmp=1,score_Id_min=1,score_Id=4] add SearchTarget
execute @e[score_TimerTool3_min=120,score_TimerTool3=120,tag=ModeCombat] ~ ~ ~ scoreboard players set @s[tag=!TireIA] TimerTool3 0
scoreboard players remove @e[tag=ModeCombat,score_TimerTool3_min=1] TimerTool3 1
scoreboard players tag @e[tag=MoveIA,score_TimerTool3_min=1] add FinMouvement

#Se rapproche du joueur dès qu'il s'en éloigne et qu'il n'est pas en train d'aller revive
scoreboard players tag @a[score_Id_min=1,score_Id=4] add Followed
scoreboard players tag @e[score_Id_min=1,score_Id=4,tag=ModeCombat] add FollowPlayer
scoreboard players tag @e[score_Id_min=1,score_Id=4,tag=GoToRevive] remove FollowPlayer
scoreboard players tag @e[score_Id_min=1,score_Id=4,tag=Reviving] remove FollowPlayer

#Passe derriere un joueur qui tire si aucune cible n'est trouvée apres 2 tests (TimerTool2 est set a 80 a chaque tir)
execute @a[tag=LocUpdated,score_Id_min=1,score_Id=4,score_TimerTool2_min=1] ~ ~ ~ execute @e[tag=ModeCombat,score_Id_min=1,score_Id=4,score_TimerTool4_min=2] ~ ~ ~ execute @s[tag=!Dead] ~ ~ ~ execute @s[tag=LocUpdated] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/DepasseJoueur if @s[tag=LocUpdated]
execute @e[tag=ModeCombat,score_Id_min=1,score_Id=4,score_TimerTool4_min=2] ~ ~ ~ scoreboard players tag @p[score_Id_min=1,score_Id=4,score_TimerTool2_min=1] add AskLocation
scoreboard players tag @e[tag=ModeCombat,score_Id_min=1,score_Id=4,score_TimerTool4_min=2] add AskLocation
scoreboard players remove @a[score_TimerTool2_min=1,score_Id_min=1,score_Id=4] TimerTool2 1
execute @e[tag=LineMoveEnd] ~ ~ ~ scoreboard players tag @s[tag=ModeCombat] add SearchTarget
execute @e[tag=LineMoveEnd] ~ ~ ~ scoreboard players tag @s[tag=ModeCombat] add AskLocation
scoreboard players tag @e remove LineMoveEnd

#Annule la recherche de cibles apres 15 tests ratés
execute @e[tag=ModeCombat,score_TimerTool4_min=15] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/StopSearchTarget
scoreboard players set @e[score_TimerTool4_min=15] TimerTool4 0

#------------------------------------------------------------------------------------------------------------------------------------------

#Résultat d'un test de visibilité (Ces données viennent de la fonction Map/IA/Combat/GiveVisibility)
execute @e[tag=UpdateVisible] ~ ~ ~ scoreboard players tag @s[tag=HasTarget] add TireIA
execute @e[tag=UpdateVisible] ~ ~ ~ scoreboard players tag @s[tag=HasTarget] add UpdateArmsIA
execute @e[tag=UpdateVisible] ~ ~ ~ scoreboard players tag @s[tag=!HasTarget] add SearchTarget
execute @e[tag=UpdateVisible] ~ ~ ~ scoreboard players tag @s[tag=!HasTarget] remove TireIA
execute @e[tag=UpdateVisible] ~ ~ ~ scoreboard players add @s[tag=!HasTarget] TimerTool4 1
scoreboard players tag @e[tag=UpdateVisible] remove WaitTestResult
scoreboard players tag @e remove UpdateVisible

#Vérifie que la cible est vivante
scoreboard players tag @e[tag=TireIA] add TargetDead
execute @e[tag=TireIA] ~ ~ ~ function Gunivers-Lib:Map/Tools/IsTargetDead
execute @e[tag=TargetDead] ~ ~ ~ scoreboard players tag @s add SearchTarget
execute @e[tag=TargetDead] ~ ~ ~ scoreboard players tag @s remove TireIA
scoreboard players tag @e remove TargetDead

#Mise a jour du vecteur des IA qui tirent sur une cible qui bouge
scoreboard players tag @e remove MovingTarget
execute @a ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/UpdateTargetting
execute @e[tag=MoveIA] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/UpdateTargetting

#Vérifie qu'il existe des cibles
scoreboard players set @e[tag=ModeCombat] Tmp 1
execute @e[score_Team_min=2,score_Team=2,tag=Fighting] ~ ~ ~ scoreboard players set @e[tag=ModeCombat] Tmp 0
scoreboard players set @e[tag=ModeCombat,score_Tmp_min=1] VisTestWait 1

#Empeche une mise a jour du vecteur si l'IA utilise le LineMove
scoreboard players tag @e[score_LineMoveTime_min=1] remove SearchTarget
scoreboard players tag @e[score_LineMoveTime_min=1] remove IsTargetVisible

#Vérifie que la cible n'est pas cachée par un mur
#Tire un projectile de test si son TimerTool est a 0.
#Remise a 0 du VisTestWait apres 15 ticks, apres 8 si la cible est mobile, apres 60 si le tireur est deja en train de tirer
scoreboard players set @e[tag=MovingTarget,score_VisTestWait_min=8] VisTestWait 0
execute @e[tag=ModeCombat,score_VisTestWait_min=15] ~ ~ ~ scoreboard players set @s[tag=!TireIA] VisTestWait 0
scoreboard players set @e[tag=TireIA,score_VisTestWait_min=60] VisTestWait 0
scoreboard players add @e[tag=ModeCombat,score_VisTestWait_min=1] VisTestWait 1
execute @e[tag=SearchTarget,score_VisTestWait_min=0,score_VisTestWait=0] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/SearchTarget
execute @e[tag=IsTargetVisible,score_VisTestWait_min=0,score_VisTestWait=0] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/IsTargetVisible

#Tir
scoreboard players tag @e[tag=Dead] remove TireIA
scoreboard players tag @e[tag=TireIA] add IsTargetVisible
function Gunivers-Lib:Map/IA/Combat/ArmesIA if @e[tag=TireIA]

#Rotation des bras
execute @e[tag=ModeCombat] ~ ~ ~ execute @s[tag=!MoveIA] ~ ~ ~ entitydata @s[tag=!TireIA] {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
scoreboard players tag @e[tag=MovingTarget,score_TestVisWait_min=8,score_TestVisWait=8] add UpdateArmsIA
execute @e[tag=UpdateArmsIA] ~ ~ ~ function Gunivers-Lib:Map/IA/Animation/RotateArms
scoreboard players tag @e[tag=UpdateArmsIA] add GetOriFromVec
scoreboard players tag @e[tag=UpdateArmsIA] add SetOrientation
scoreboard players tag @e remove UpdateArmsIA

#Divers
execute @e[score_Id_min=1,score_Id=4] ~ ~ ~ scoreboard players operation @s ShooterId = @s Id
scoreboard players tag @a add Fighting
