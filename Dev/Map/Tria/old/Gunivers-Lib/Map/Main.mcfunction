#Fontion main de la Map Tria
#Call a 20Hz par la gamerule gameLoopFunction

### Outils et Systemes permanents ----------------------------------------------------------------

# Kill auto des entités (Tags: Perm = Jamais, CanBeAlive = Au prochain reset)
# Type de vehicule utilisé = InVehicle (0 = A pied)
# Identification des vehicules = VehicleType
# Teams: Ally pour les alliés, Enemy pour les ennemis (Tags: TeamA et TeamE demandés)
# Systeme de Join (dès qu'un joueur se connecte)
# Activation de la clock lente
# Effets (Tags: NoFire, Invincible, Invisible)
# Tag IsControled (quand un cheval est monté)
# Update Health et Mort

#Protection des entités utiles
scoreboard players set @e[type=item_frame] CanBeAlive 1
scoreboard players set @e[type=painting] CanBeAlive 1

#Kill des entités inutiles (Perm = Permanente, CanBeAlive = Kill au prochain reset)
scoreboard players add @e CanBeAlive 0
scoreboard players set @e[tag=CanBeAlive,score_CanBeAlive_min=0,score_CanBeAlive=0] CanBeAlive 1
scoreboard players tag @e remove CanBeAlive
scoreboard players set @e[tag=Perm] CanBeAlive 1
tp @e[score_CanBeAlive=0,score_CanBeAlive_min=0,type=!player] ~ -200 ~
kill @e[score_CanBeAlive=0,score_CanBeAlive_min=0,type=!player]
scoreboard players add @e[score_CanBeAlive=-1] CanBeAlive 1 

#Detection du type de vehicule utilisé (0 = Aucun, 1 a 9 = Vehicule terrestre, 11 a 19 = Vehicule volant, -1 = Vient de sortir)
scoreboard players add @a InVehicle 0
scoreboard players set @a[score_InVehicle=-1] InVehicle 0
scoreboard players set @a[score_InVehicle_min=1] InVehicle -1
scoreboard players set @a InVehicle 1 {RootVehicle:{Entity:{id:"minecraft:horse",Tags:["Quad"]}}}
scoreboard players set @a InVehicle 2 {RootVehicle:{Entity:{id:"minecraft:horse",Tags:["Tank"]}}}
scoreboard players set @a InVehicle 11 {RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["Plane"]}}}

#Identification des différents véhicules (0 = Pas un vehicule, 1 a 9 = Vehicule terrestre, 11 a 19 = Vehicule volant)
scoreboard players add @e VehicleType 0
scoreboard players set @e[tag=Quad,type=horse] VehicleType 1
scoreboard players set @e[tag=Tank] VehicleType 2
scoreboard players set @e[tag=Plane,type=armor_stand] VehicleType 11

#Teams
scoreboard players set @e[tag=Team1] Team 1
scoreboard players set @e[tag=Team2] Team 2
scoreboard players tag @e remove Team1
scoreboard players tag @e remove Team2
scoreboard teams join Ally @e[score_Team_min=1,score_Team=1]
scoreboard teams join Enemy @e[score_Team_min=2,score_Team=2]

#Systeme de Join (Join est un stat.leaveGame)
scoreboard players add @a Spawn 0
scoreboard players add @a[score_Spawn=1] Spawn 1
execute @a[score_Spawn_min=1,score_Spawn=1] ~ ~ ~ tellraw @a[tag=FRA] {"text":">>","color":"gold","bold":"true","extra":[{"text":" Bienvenu sur ","color":"gray","bold":"false"},{"text":"Tria","color":"white"},{"text":", ","color":"gray","bold":"false"},{"selector":"@p","color":"white"},{"text":" <<","color":"gold"}]}
execute @a[score_Spawn_min=1,score_Spawn=1] ~ ~ ~ tellraw @a[tag=ENG] {"text":">>","color":"gold","bold":"true","extra":[{"text":" Welcome on ","color":"gray","bold":"false"},{"text":"Tria","color":"white"},{"text":", ","color":"gray","bold":"false"},{"selector":"@p","color":"white"},{"text":" <<","color":"gold"}]}
spawnpoint @a[score_Spawn_min=1,score_Spawn=1] 1000 100 1000
execute @a[score_Spawn_min=1,score_Spawn=1] ~ ~ ~ summon fireworks_rocket 1000 105 1000 {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16755200],FadeColors:[I;16777215]}]}}}}
scoreboard players add @e Id 0
scoreboard players set @a[score_Spawn_min=1,score_Spawn=1] Join 1
tp @a[score_Id=0,score_Id_min=0,score_Join_min=1] 1000 100 1000
gamemode 2 @a[score_Id=0,score_Id_min=0,score_Join_min=1]
title @a[score_Join_min=1] times 0 3 0
scoreboard players set @a Join 0

#Activation de la clock lente (Tag Timer1s pour avoir un timer d'une seconde sur n'importe quelle entité)
scoreboard players add @e[tag=Timer1s] Timer1s 1
function Gunivers-Lib:Map/MainClockLente if @e[tag=Data,score_Timer1s_min=21]
scoreboard players set @e[tag=Timer1s,score_Timer1s_min=21] Timer1s 1

#Effets (Tags: NoFire, Invincible, Invisible)
effect @e[tag=Invisible] invisibility 1 0 true
effect @e[tag=Invincible] resistance 1 255 true
entitydata @e[tag=NoFire] {Fire:0s}

#Score IsControled (quand un cheval est monté par un joueur)
scoreboard players set @e[score_VehicleType_min=1] IsControled 0
scoreboard players set @e[tag=Root] IsControled 0
execute @a[score_InVehicle_min=1] ~ ~ ~ scoreboard players set @e[type=horse,r=2,c=1] IsControled 1
execute @a[score_InVehicle_min=1] ~ ~ ~ scoreboard players set @e[tag=Root,r=2,c=1] IsControled 1

#Update Health et Mort
effect @a instant_damage 0
effect @a regeneration 0
effect @a resistance 2 255 true
scoreboard players tag @a add InitHealth
scoreboard players tag @a[score_Health_min=-1000,score_Id_min=1,score_Id=4] remove InitHealth
scoreboard players set @a[tag=InitHealth] Health 20
scoreboard players tag @a remove InitHealth
execute @e[score_Id_min=1,score_Id=4,score_Health=0] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/Mort
kill @e[tag=CanDie,score_Id=0,score_Health=0]
execute @a ~ ~ ~ scoreboard players operation @s Health -= @s HealthRead
execute @a[score_Health_min=1] ~ ~ ~ function Gunivers-Lib:Map/Autres/UpdateHealthP
execute @a[score_Health=-1] ~ ~ ~ function Gunivers-Lib:Map/Autres/UpdateHealthM
execute @a ~ ~ ~ scoreboard players operation @s Health += @s HealthRead

#Animation Explosion
execute @a[tag=AnimExplode] ~ ~ ~ function Gunivers-Lib:Map/Tools/AnimExplode
 
### Mouvements des Vehicules Terrestres ---------------------------------------------------------

function Gunivers-Lib:Map/VehiculesSol/VehiculesSol if @e[tag=ActVehiSol]

### Intelligences Artificielles -----------------------------------------------------------------

# Initialisation
# Emotions
# Déplacements: Tag MoveAI pour lancer le mouvement, cible: /summon Villager ~ ~ ~ {NoAI:1,Tags:["Team2","TargetIA","Invisible","CanBeAlive","Invincible"],Silent:1} 
# Déplacement Lineaire
# Animation pendant la marche
# Humanisation (Mouvements aléatoires)
# Revive
# Follow Player
# Mode Combat
# Test de Visibilité

#Initialisation
execute @e[tag=InitIA] ~ ~ ~ function Gunivers-Lib:Map/IA/Tools/InitIA

#Emotions
function Gunivers-Lib:Map/IA/Animation/Emotion if @e[tag=Emotion]

#Déplacements
scoreboard players set @e[type=zombie,tag=IAmove] Tmp 1
execute @e[tag=MoveIA] ~ ~ ~ scoreboard players set @e[tag=IAmove,r=2,c=1] Tmp 0
scoreboard players set @e[tag=IAmove,score_Tmp_min=1] CanBeAlive 0
function Gunivers-Lib:Map/IA/Mouvement/Mouvement if @e[tag=MoveIA]

#Déplacement Linéaire
scoreboard players set @e Tmp 0
scoreboard players set @e[score_LineMoveTime_min=1] Tmp 1
scoreboard players reset @e[score_Tmp=0] LineMoveTime
scoreboard players tag @e[tag=IA] remove Moving
function Gunivers-Lib:Map/IA/Mouvement/LineMove if @e[score_LineMoveTime_min=1]

#Animation pendant la marche
function Gunivers-Lib:Map/IA/Animation/AnimMouvement if @e[score_AnimMouvement_min=1]
entitydata @e[score_AnimMouvement_min=0,score_AnimMouvement=0] {Pose:{RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightArm:[0f,-15f,0f],LeftArm:[0f,-15f,0f]}}
scoreboard players remove @e[score_AnimMouvement_min=0] AnimMouvement 1

#Humanisation (Mouvements aléatoires)
#Lancement des mouvements aléatoires
function Gunivers-Lib:Map/IA/Animation/TimeRandomMove if @e[tag=RandomMoves]
#Execution des mouvements de tete
function Gunivers-Lib:Map/IA/Animation/TeteDroiteGauche if @e[score_TimelineLook_min=1]

#Revive
scoreboard players set @e[tag=VillagerRev] Tmp 1
execute @e[tag=RevVillager] ~ ~2.5 ~ scoreboard players set @e[tag=VillagerRev,r=2,c=1] Tmp 0
scoreboard players set @e[tag=VillagerRev,score_Tmp_min=1] CanBeAlive 0
function Gunivers-Lib:Map/IA/Combat/Revive if @e[tag=Dead]

#Follow Player
execute @e[tag=FollowPlayer] ~ ~ ~ execute @s[tag=!Dead] ~ ~ ~ execute @s[tag=!GoToRevive] ~ ~ ~ function Gunivers-Lib:Map/IA/Mouvement/FollowPlayer if @a[tag=Followed]

#Mode Combat
function Gunivers-Lib:Map/IA/Combat/ModeCombat if @e[tag=ModeCombat]

#Test de Visibilité
function Gunivers-Lib:Map/IA/Combat/GetTargetVisibility if @e[tag=TestVisible]

### Armes au sol --------------------------------------------------------------------------------

# Tirs des Joueurs
# Dégats des balles

#Tirs des Joueurs
function Gunivers-Lib:Map/ArmesSol/ArmesSol if @e[tag=ActArmesSol]

#Degats des balles
function Gunivers-Lib:Map/Tools/Projectiles/BulletTestHit if @e[tag=Bullet]

### Histoire ------------------------------------------------------------------------------------

function Gunivers-Lib:Map/Histoire/Part1 if @e[name=Data,score_CurrentChap_min=1,score_CurrentChap=3]
function Gunivers-Lib:Map/Histoire/Part2 if @e[name=Data,score_CurrentChap_min=4,score_CurrentChap=6]
function Gunivers-Lib:Map/Histoire/Part3 if @e[name=Data,score_CurrentChap_min=7,score_CurrentChap=9]

### Autres --------------------------------------------------------------------------------------

# Projectiles
# Gravité
# Movements
# Collisions
# Rotation des Models (Vehicules Volants)
# Explosion
# Get Location File d'Attente
# Divers

#Projectiles. Tags:
#DirShoot pour Tirer, Definition des projectiles dans Map/Tools/Projectiles/LGdir. (Il faut set un DirProjType pour dire quel projectile doit etre tiré)
#GetOrientation pour avoir l'orientation (Sur Phi et Theta). Attention, l'orientation réelle sera reset pendant le calcul
#GetOriXFromVec pour avoir l'orientation correspondant au vecteur sur VectorX, et VectorZ (Phi)
#GetOriYFromVec pour avoir l'orientation correspondant au vecteur sur VectorY (Theta)
#GetOriFromVec pour avoir l'orientation correspondant aux 3 vecteurs (Phi et Theta)
#SetOrientation pour avoir l'orientation réelle égale a celle sur Phi et Theta.
#SetVectors pour avoir le vecteur correspondant a l'orientation sur Phi et Theta
function Gunivers-Lib:Map/Tools/Projectiles/LGdir if @e[tag=DirShoot]

function Gunivers-Lib:Entity/Get/Orientation if @e[tag=GetOrientation]

scoreboard players tag @e[tag=GetOriFromVec] add GetOriXFromVec
scoreboard players tag @e[tag=GetOriFromVec] add GetOriYFromVec
function Gunivers-Lib:Entity/Calcul/GetOriXFromVec if @e[tag=GetOriXFromVec]
function Gunivers-Lib:Entity/Calcul/GetOriYFromVec if @e[tag=GetOriYFromVec]

function Gunivers-Lib:Entity/Set/Orientation if @e[tag=SetOrientation]

scoreboard players set @e[tag=Data] Tmp 0
execute @a[score_Id_min=1,score_Id=4] ~ ~ ~ scoreboard players add @e[tag=Data] Tmp 1
execute @e[tag=Data,score_Tmp=1] ~ ~ ~ execute @a[score_Id_min=1,score_Id=4] ~ ~ ~ execute @e[tag=Flying,r=2] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/VolSingle if @e[tag=Flying]
execute @e[tag=Data,score_Tmp_min=2] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/VolMulti if @e[tag=Flying]

function Gunivers-Lib:Entity/Calcul/SetVectors if @e[tag=SetVectors]

#Gravité
execute @e[tag=Falling,score_VectorY_min=-1000] ~ ~ ~ scoreboard players operation @s VectorY -= @s GravityScale

#Mouvements (Tag: Moving = Mouvement selon le vecteur sur VectorX, Y et Z. Vitesse = VectorSpeed (1 à 400 centiblocks/tick))
function Gunivers-Lib:Entity/Set/Movement if @e[tag=Moving]

#Collisions (Besoin des Tmp calculés dans la fonction Entity/Set/Movement)
scoreboard players set @e[tag=Data] Tmp 0
execute @e[tag=HasCollisions] ~ ~ ~ scoreboard players set @e[tag=Data] Tmp 1
execute @e[tag=ComplexColl] ~ ~ ~ scoreboard players set @e[tag=ActComplexColl] Tmp 2
function Gunivers-Lib:Map/Tools/Projectiles/Collisions if @e[tag=Data,score_Tmp_min=1,score_Tmp=1]
function Gunivers-Lib:Map/Tools/Projectiles/CollisionsPrecises if @e[tag=Data,score_Tmp_min=2,score_Tmp=2]

#Explosion
execute @e[tag=Explode] ~ ~ ~ function Gunivers-Lib:Map/Tools/Explosion

#Get Location File d'Attente
scoreboard players set @e[tag=Data] Tmp 0
execute @e[tag=GetLocation] ~ ~ ~ scoreboard players set @e[tag=Data] Tmp 1
execute @e[tag=Data,score_Tmp=0] ~ ~ ~ scoreboard players tag @e[tag=AskLocation] add GetLocation
execute @e[tag=GetLocation,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Get/Location

#Divers
execute @a[score_Id_min=1,score_Id=4] ~ ~ ~ scoreboard players operation @s DynamicId = @s Id
scoreboard players set @a Team 1
scoreboard players set @a Drop 0
scoreboard players set @a UseCarrot 0














