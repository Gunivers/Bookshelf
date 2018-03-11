#Tire un Projectile
#DirProjType est le type de projectile tiré

#DirProjType = -1 : Projectile test (permet de savoir si une entité est visible ou non)
#DirProjType = 1 : Balle de Fusil d'Assault
#DirProjType = 2 : Balle de Sniper
#La Balle de Fusil à Pompe est particuliere, gestion dans Map/ArmesSol/TirPompe
#DirProjType = 51 : Balle de Fusil d'Assault (IA)
#DirProjType = 52 : Balle de Sniper (IA)
#DirProjType = 54 : Balle de Fusil (IA)
#DirProjType = 101 : Balle de Gros Pistolet (Style Deagle)
#DirProjType = 102 : Balle de Petit Pistolet (Style 9mm)
#DirProjType = 201 : Grenade
#DirProjType = 1001 : Balle de vaisseau
#DirProjType = 1002 : Missile autoguidé
#DirProjType = 1501 : Balle de vaisseau (IA)
#DirProjType = 2001 : Obus de Char
#DirProjType = 2501 : Obus de Char (IA)

#Spawn du projectile
execute @e[score_DirProjType_min=-1,score_DirProjType=-1,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["PreCalcVector","Moving","JustSpawned","TestVisible","HasCollisions","ComplexColl","NoGlassColl","NoBarsColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"TestVisible"}
execute @a[score_DirProjType_min=1,score_DirProjType=1,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","JustSpawned","GetOrientation","SetVectors","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletFA"}
execute @a[score_DirProjType_min=2,score_DirProjType=2,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","JustSpawned","GetOrientation","SetVectors","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletSniper"}
execute @e[score_DirProjType_min=51,score_DirProjType=51,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["JustSpawned","PreCalcVector","RandomizeVec","Moving","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletFA"}
execute @e[score_DirProjType_min=52,score_DirProjType=52,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["JustSpawned","PreCalcVector","RandomizeVec","Moving","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletSniper"}
execute @e[score_DirProjType_min=54,score_DirProjType=54,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["JustSpawned","PreCalcVector","RandomizeVec","Moving","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletFusil"}
execute @a[score_DirProjType_min=101,score_DirProjType=101,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","JustSpawned","GetOrientation","SetVectors","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletGP"}
execute @a[score_DirProjType_min=102,score_DirProjType=102,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","JustSpawned","GetOrientation","SetVectors","Bullet","HasCollisions","ComplexColl","SpeBarsColl","SpeGlassColl"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletPP"}
execute @a[score_DirProjType_min=201,score_DirProjType=201,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","JustSpawned","GetOrientation","SetVectors","HasCollisions","ComplexColl","Grenade","NoKillCollide","Falling","Rebound"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"Grenade",ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute @e[score_DirProjType_min=1001,score_DirProjType=1001,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["JustSpawned","PreCalcVector","Moving","PlaneBullet","HasCollisions"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletPlane"}
execute @e[score_DirProjType_min=1002,score_DirProjType=1002,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["PlaneProj","Team1","PreCalcVector","Moving","JustSpawned","Root","MissileAuto","PlaneMovement","TestCrash"],Invisible:1,Marker:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute @e[score_DirProjType_min=1501,score_DirProjType=1501,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["PlaneProj","RandomizeVec","JustSpawned","PreCalcVector","Moving","PlaneBullet","HasCollisions"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"BulletPlane"}
execute @e[score_DirProjType_min=2001,score_DirProjType=2001,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","CanBeAlive","JustSpawned","GetOrientation","SetVectors","ObusTank","HasCollisions","NoKillCollide"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"TankObus"}
execute @e[score_DirProjType_min=2501,score_DirProjType=2501,tag=DirShoot] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","JustSpawned","Moving","PreCalcVector","ObusTank","HasCollisions","NoKillCollide"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"TankObus"}

#Initialisation
execute @e[tag=DirShoot] ~ ~ ~ tp @e[tag=JustSpawned,r=2,c=1] @s
execute @e[tag=DirShoot] ~ ~ ~ scoreboard players operation @e[tag=JustSpawned,r=2,c=1] ShooterId = @s ShooterId
execute @e[tag=DirShoot] ~ ~ ~ scoreboard players operation @e[tag=JustSpawned,r=2,c=1] TargetId = @s TargetId
execute @e[tag=DirShoot] ~ ~ ~ scoreboard players operation @e[tag=JustSpawned,r=2,c=1] Team = @s Team
execute @e[tag=DirShoot] ~ ~ ~ scoreboard players operation @e[tag=RandomizeVec,r=2,c=1] Imprecision = @s Imprecision
execute @e[tag=PreCalcVector] ~ ~ ~ function Gunivers-Lib:Map/Tools/GetVectorFromShooter
execute @e[tag=RandomizeVec] ~ ~ ~ function Gunivers-Lib:Map/Tools/RandomizeVec
execute @e[tag=DirShoot] ~ ~ ~ tp @e[tag=JustSpawned,c=1,r=2] ~ ~1.7 ~
execute @e[tag=DirShoot] ~ ~ ~ execute @s[tag=Plane,score_IsControled_min=1] ~ ~ ~ scoreboard players operation @e[tag=JustSpawned,r=2,c=1] Phi = @s PlanePhi
execute @e[tag=DirShoot] ~ ~ ~ execute @s[tag=Plane,score_IsControled_min=1] ~ ~ ~ scoreboard players operation @e[tag=JustSpawned,r=2,c=1] Theta = @s PlaneTheta

#Divers
execute @e[tag=JustSpawned] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/InitProj
scoreboard players tag @e remove DirShoot
scoreboard players tag @e remove JustSpawned
scoreboard players tag @e remove PreCalcVector
scoreboard players tag @e remove RandomizeVec