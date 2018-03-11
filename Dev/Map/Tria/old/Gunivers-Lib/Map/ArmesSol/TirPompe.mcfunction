#Le fusil a pompe tire 4 balles ayant des trajectoires aléatoires

#Fait spawn les 4 balles
summon armor_stand ~ ~ ~ {Tags:["Moving","GetOrientation","SetVectors","Bullet","JustSpawned","HasCollisions","ComplexColl"],NoGravity:1,Invisible:1,Marker:1,CustomName:"BulletPompe"}
summon armor_stand ~ ~ ~ {Tags:["Moving","GetOrientation","SetVectors","Bullet","JustSpawned","HasCollisions","ComplexColl"],NoGravity:1,Invisible:1,Marker:1,CustomName:"BulletPompe"}
summon armor_stand ~ ~ ~ {Tags:["Moving","GetOrientation","SetVectors","Bullet","JustSpawned","HasCollisions","ComplexColl"],NoGravity:1,Invisible:1,Marker:1,CustomName:"BulletPompe"}
summon armor_stand ~ ~ ~ {Tags:["Moving","GetOrientation","SetVectors","Bullet","JustSpawned","HasCollisions","ComplexColl"],NoGravity:1,Invisible:1,Marker:1,CustomName:"BulletPompe"}

#Initialisation
tp @e[tag=JustSpawned,r=1,c=4] @s
scoreboard players operation @e[tag=JustSpawned,r=1,c=4] ShooterId = @s ShooterId
scoreboard players operation @e[tag=JustSpawned,r=1,c=4] Team = @s Team
scoreboard players set @e[tag=JustSpawned] CanBeAlive -40

#Randomisation de l'orientation
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s Random = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=9] Random
tp @e[tag=JustSpawned,score_Random_min=1,score_Random=1] ~ ~ ~ ~5 ~
tp @e[tag=JustSpawned,score_Random_min=2,score_Random=2] ~ ~ ~ ~-5 ~
tp @e[tag=JustSpawned,score_Random_min=3,score_Random=3] ~ ~ ~ ~ ~5
tp @e[tag=JustSpawned,score_Random_min=4,score_Random=4] ~ ~ ~ ~ ~-5
tp @e[tag=JustSpawned,score_Random_min=5,score_Random=5] ~ ~ ~ ~4 ~4
tp @e[tag=JustSpawned,score_Random_min=6,score_Random=6] ~ ~ ~ ~-4 ~4
tp @e[tag=JustSpawned,score_Random_min=7,score_Random=7] ~ ~ ~ ~4 ~-4
tp @e[tag=JustSpawned,score_Random_min=8,score_Random=8] ~ ~ ~ ~-4 ~-4

#Demande de tir
scoreboard players set @e[tag=JustSpawned] VectorSpeed 200
scoreboard players set @e[tag=JustSpawned] Damage 4
tp @e[tag=JustSpawned] ~ ~1.7 ~
scoreboard players tag @e remove JustSpawned

