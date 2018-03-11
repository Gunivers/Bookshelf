#Detection du slot utilisé
function Gunivers-Lib:Map/Tools/GetHoldItem if @a[score_InVehicle_min=11,score_InVehicle=11]

#Controle des mouvements du vaisseau
execute @a[score_InVehicle_min=11,score_InVehicle=11,score_HoldItem=8] ~ ~-1 ~ scoreboard players tag @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] add GetOrientation
execute @a[score_InVehicle_min=11,score_InVehicle=11,score_HoldItem=8] ~ ~-1 ~ scoreboard players tag @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] add SetVectors
execute @a[score_InVehicle_min=11,score_InVehicle=11] ~ ~-1 ~ scoreboard players tag @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] add SetOrientation
execute @a[score_InVehicle_min=11,score_InVehicle=11,score_HoldItem_min=9] ~ ~-1 ~ scoreboard players tag @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] add RotateModel
execute @e[score_IsControled_min=1,score_VehicleType_min=11,score_VehicleType=19] ~ ~0.99 ~ tp @s @p[score_InVehicle_min=11,score_InVehicle=19,r=1]
execute @e[score_IsControled_min=1,score_VehicleType_min=11,score_VehicleType=19] ~ ~ ~ tp @s ~ ~-0.99 ~
scoreboard players set @e[tag=Plane] VectorSpeed 100

#Rotation du model
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s PlaneTheta = @s Theta
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s PlanePhi -= @s Phi
scoreboard players tag @e[tag=PlaneIA,score_PlanePhi_min=5] add PlaneTurnL
scoreboard players tag @e[tag=PlaneIA,score_PlanePhi=-5] add PlaneTurnR
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s PlanePhi = @s Phi
function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/RotateModel if @e[tag=RotateModel]

#Initialisation
execute @e[tag=InitPlane] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/InitPlane

#Calcule un nouveau vecteur de mouvement pour les IA (Fonce vers la cible, s'eloigne d'un vaisseau trop proche ou reviens vers le centre)
scoreboard players tag @e[tag=PlaneMovement] add AskNewVector
scoreboard players tag @e[tag=PlaneMovement] add AskLocation
scoreboard players tag @e[tag=Plane,score_IsControled_min=1] add AskLocation

scoreboard players set @e[tag=Data] Tmp 0
execute @e[tag=GetNewVector] ~ ~ ~ scoreboard players set @e[tag=Data] Tmp 1
execute @e[tag=Data,score_Tmp=0] ~ ~ ~ scoreboard players tag @e[tag=AskNewVector] add GetNewVector
execute @e[tag=GetNewVector,c=1] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/GetNewVector

#Demande un Tir (IA)
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s TargetVectorX -= @s VectorX
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s TargetVectorY -= @s VectorY
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s TargetVectorZ -= @s VectorZ
execute @e[score_1stAmoLoaded_min=1,score_Reloading1st=0,score_cdShoot1st=0,tag=PlaneIA,score_TargetVectorX_min=-50,score_TargetVectorX=50,score_TargetVectorY_min=-50,score_TargetVectorY=50,score_TargetVectorZ_min=-50,score_TargetVectorZ=50] ~ ~ ~ scoreboard players tag @s[tag=PlaneFonce] add TirBalle
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s TargetVectorX += @s VectorX
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s TargetVectorY += @s VectorY
execute @e[tag=PlaneIA] ~ ~ ~ scoreboard players operation @s TargetVectorZ += @s VectorZ

#Ajuste la direction vers le vecteur cible
execute @e[tag=PlaneMovement] ~ ~ ~ scoreboard players operation @s VectorX *= 10 Constant
execute @e[tag=PlaneMovement] ~ ~ ~ scoreboard players operation @s VectorY *= 10 Constant
execute @e[tag=PlaneMovement] ~ ~ ~ scoreboard players operation @s VectorZ *= 10 Constant
execute @e[tag=PlaneMovement] ~ ~ ~ scoreboard players operation @s VectorX += @s TargetVectorX
execute @e[tag=PlaneMovement] ~ ~ ~ scoreboard players operation @s VectorY += @s TargetVectorY
execute @e[tag=PlaneMovement] ~ ~ ~ scoreboard players operation @s VectorZ += @s TargetVectorZ
execute @e[tag=PlaneMovement] ~ ~ ~ function Gunivers-Lib:Map/Tools/NormalizeVector

#Demande un rechargement (IA)
execute @e[score_1stAmoLoaded=0,score_Reloading1st=0,tag=PlaneIA] ~ ~ ~ scoreboard players set @s Reloading1st -1

#Demande un Tir
scoreboard players tag @a[score_HoldItem_min=2,score_HoldItem=2,score_UseCarrot_min=1,score_InVehicle_min=11,score_InVehicle=11,score_Reloading2nd=0] add TirMissile
execute @a[tag=TirMissile] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/TirMissile

scoreboard players tag @a[score_1stAmoLoaded_min=1,score_HoldItem_min=1,score_HoldItem=1,score_UseCarrot_min=1,score_InVehicle_min=11,score_InVehicle=11,score_Reloading1st=0,score_cdShoot1st=0] add TirBalle

function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/TirBalle if @e[tag=TirBalle]

#Demande un rechargement
scoreboard players add @a Reloading1st 0
scoreboard players add @a Reloading2nd 0
execute @a[score_1stAmoLoaded=0,score_HoldItem_min=1,score_HoldItem=1,score_UseCarrot_min=1,score_InVehicle_min=11,score_InVehicle=11,score_Reloading1st=0] ~ ~ ~ scoreboard players set @s Reloading1st -1
execute @a[score_Reloading1st=0,score_UseOffHand_min=1,score_HoldItem_min=1,score_HoldItem=1] ~ ~ ~ scoreboard players set @s Reloading1st -1

#Lance le temps de rechargement si le chargeur n'est pas plein
scoreboard players set @e[score_Reloading1st=-1,score_1stAmoLoaded=29] Reloading1st 60
scoreboard players set @e[score_Reloading1st=-1,score_1stAmoLoaded_min=30] Reloading1st 0

#Rechargement
scoreboard players set @e[score_Reloading1st_min=1,score_Reloading1st=1] 1stAmoLoaded 30
scoreboard players remove @e[score_Reloading1st_min=1] Reloading1st 1
scoreboard players remove @e[score_Reloading2nd_min=1] Reloading2nd 1

#Timer pour la cadence de tir
scoreboard players remove @e[score_cdShoot1st_min=1] cdShoot1st 1
scoreboard players add @a cdShoot1st 0

#Destruction
execute @e[tag=TestCrash] ~ ~ ~ execute @s[tag=!Explode] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/Crash

#Bords de map
scoreboard players tag @e[tag=Plane,score_IsControled_min=1] add MsgCenter
scoreboard players tag @e[tag=Plane,score_IsControled_min=1,score_LocY_min=21,score_LocY=245] remove MsgCenter
scoreboard players tag @e[tag=Plane,score_IsControled_min=1,x=2000,y=128,z=2000,rm=150,r=250] add MsgCenter
execute @e[tag=MsgCenter] ~ ~ ~ title @p[score_InVehicle_min=11,score_InVehicle=11,r=2,tag=FRA] title {"text":"Retournez au combat !","bold":"true","color":"red"}
execute @e[tag=MsgCenter] ~ ~ ~ title @p[score_InVehicle_min=11,score_InVehicle=11,r=2,tag=ENG] title {"text":"Return to combat !","bold":"true","color":"red"}
scoreboard players tag @e[tag=Plane,x=2000,y=128,z=2000,rm=250,r=300] add Explode
kill @e[tag=PlaneBullet,x=2000,y=128,z=2000,rm=200,r=250]

#Items
replaceitem entity @a[score_InVehicle=11,score_InVehicle_min=11,score_Id_min=1,score_Id=5] slot.weapon.offhand air
replaceitem entity @a[score_InVehicle=11,score_InVehicle_min=11,score_Id_min=1,score_Id=5,tag=FRA] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Feu !"}}
replaceitem entity @a[score_InVehicle=11,score_InVehicle_min=11,score_Id_min=1,score_Id=5,tag=ENG] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Fire !"}}
replaceitem entity @a[score_InVehicle=11,score_InVehicle_min=11,score_Id_min=1,score_Id=5,tag=FRA] slot.hotbar.1 carrot_on_a_stick 1 0 {display:{Name:"Feu !"}}
replaceitem entity @a[score_InVehicle=11,score_InVehicle_min=11,score_Id_min=1,score_Id=5,tag=ENG] slot.hotbar.1 carrot_on_a_stick 1 0 {display:{Name:"Fire !"}}

#Affichage
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle_min=11,score_InVehicle=11,score_Reloading1st=0] ~ ~ ~ title @s actionbar {"text":"< ","extra":[{"score":{"objective":"1stAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"text":"30","bold":"true"},{"text":" >"}]}
title @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=11,score_InVehicle_min=11,score_Reloading1st_min=1,tag=FRA] actionbar {"text":"Rechargement...","bold":"true"}
title @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=11,score_InVehicle_min=11,score_Reloading1st_min=1,tag=ENG] actionbar {"text":"Reloading...","bold":"true"}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=11,score_InVehicle_min=11,score_Reloading2nd_min=1,tag=FRA] actionbar {"text":"Rechargement...","bold":"true"}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=11,score_InVehicle_min=11,score_Reloading2nd_min=1,tag=ENG] actionbar {"text":"Reloading...","bold":"true"}
title @a[score_HoldItem_min=3,score_InVehicle=11,score_InVehicle_min=11] actionbar {"text":""}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=11,score_InVehicle_min=11,score_Reloading2nd=0] actionbar {"text":""}

#Effets
scoreboard players tag @a[score_InVehicle=-1] remove Invisible
scoreboard players tag @a[score_InVehicle=-1] remove Invincible
scoreboard players tag @a[score_InVehicle_min=11,score_InVehicle=11] add Invisible
scoreboard players tag @a[score_InVehicle_min=11,score_InVehicle=11] add Invincible
effect @a[score_InVehicle=-1] invisibility 0
effect @a[score_InVehicle=-1] resistance 0

#Degats
scoreboard players set @e[tag=Plane] Damage 0
execute @e[tag=PlaneProj,score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players operation @e[tag=Plane,score_Team_min=2,score_Team=2,r=6,c=1] Damage = @s Damage
execute @e[tag=PlaneProj,score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @e[tag=Plane,score_Team_min=1,score_Team=1,r=6,c=1] Damage = @s Damage
execute @e[tag=Plane,score_Team_min=1,score_Team=1,score_Damage_min=1] ~ ~ ~ kill @e[tag=PlaneProj,score_Team_min=2,score_Team=2,r=6]
execute @e[tag=Plane,score_Team_min=2,score_Team=2,score_Damage_min=1] ~ ~ ~ kill @e[tag=PlaneProj,score_Team_min=1,score_Team=1,r=6]
execute @e[score_Damage_min=1,tag=Plane] ~ ~ ~ scoreboard players operation @s Health -= @s Damage

#Mort
scoreboard players tag @e[tag=Plane,score_Health=0] add ExplPlane
function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/Explosion if @e[tag=ExplPlane]

#Divers
scoreboard players tag @e[tag=PlaneIA] add GetOriFromVec
scoreboard players tag @e[tag=PlaneIA] add SetOrientation
scoreboard players tag @e[tag=Plane] add Fighting
scoreboard players tag @e[tag=Plane,score_IsControled_min=1] remove PlaneMovement
execute @e[tag=PlaneBullet] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0 0 0 0 1 force
execute @e[tag=MissileAuto] ~ ~ ~ particle smoke ~ ~ ~ 0 0 0 0.01 3 force
execute @e[tag=Plane,score_Health=10] ~ ~ ~ particle smoke ~ ~ ~ 0 0 0 0.01 8 force
scoreboard players tag @e[tag=MissileAuto,score_CanBeAlive_min=-1,score_CanBeAlive=-1] add Explode








