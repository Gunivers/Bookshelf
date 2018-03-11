#Commande pour summon un ennemi:
#summon armor_stand ~ ~ ~ {CustomName:"Ennemi",ShowArms:1,Invulnerable:1,Tags:["CanBeAlive","CanRecieveBullet","Team2","InitIA","HasWeapon4","Fighting"],NoBasePlate:1}

#Commandes pour summon les 4 IA alliées:
#summon armor_stand ~ ~ ~ {CustomName:"Joe",CustomNameVisible:1,Invulnerable:1,ShowArms:1,Tags:["CanBeAlive","CanRecieveBullet","Team1","IAmain","InitIA","HasWeapon2","InitMoveIA","Fighting","ID1"],NoBasePlate:1}
#summon armor_stand ~ ~ ~ {CustomName:"Jack",CustomNameVisible:1,Invulnerable:1,ShowArms:1,Tags:["CanBeAlive","CanRecieveBullet","Team1","IAmain","InitIA","HasWeapon2","InitMoveIA","Fighting","ID2"],NoBasePlate:1}
#summon armor_stand ~ ~ ~ {CustomName:"William",CustomNameVisible:1,Invulnerable:1,ShowArms:1,Tags:["CanBeAlive","CanRecieveBullet","Team1","IAmain","InitIA","HasWeapon1","InitMoveIA","Fighting","ID3"],NoBasePlate:1}
#summon armor_stand ~ ~ ~ {CustomName:"Averell",CustomNameVisible:1,Invulnerable:1,ShowArms:1,Tags:["CanBeAlive","CanRecieveBullet","Team1","IAmain","InitIA","HasWeapon1","InitMoveIA","Fighting","ID4"],NoBasePlate:1}

#Commande pour summon une IA alliée:
#summon armor_stand ~ ~ ~ {CustomName:"Allie",CustomNameVisible:1,Invulnerable:1,ShowArms:1,Tags:["CanBeAlive","CanRecieveBullet","Team1","InitIA","HasWeapon2","InitMoveIA","Fighting"],NoBasePlate:1}

#Initialisation
scoreboard players set @s Health 10
execute @s[tag=!CanonIA] ~ ~ ~ scoreboard players tag @s[tag=!TankIA] add CanDie
scoreboard players add @s TimerTool 0
scoreboard players add @s TimerTool2 0
scoreboard players add @s VisTestWait 0
scoreboard players tag @s remove InitIA
scoreboard players tag @s add IA
scoreboard players set @s[tag=ID1] Id 1
scoreboard players set @s[tag=ID2] Id 2
scoreboard players set @s[tag=ID3] Id 3
scoreboard players set @s[tag=ID4] Id 4
scoreboard players tag @s remove ID1
scoreboard players tag @s remove ID2
scoreboard players tag @s remove ID3
scoreboard players tag @s remove ID4
scoreboard players set @s[score_Id_min=1] Health 50
scoreboard players set @s[tag=TankIA] Health 60
execute @s[tag=TankIA] ~ ~ ~ scoreboard players operation @s TankDistance = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=5] Random

#Mettre le tag InitMoveIA pour que l'entité puisse se déplacer
scoreboard players set @s DynamicId 0
scoreboard players operation @s[score_Id_min=1,score_Id=4] DynamicId = @s Id
execute @s[tag=InitMoveIA,score_DynamicId=0] ~ ~ ~ function Gunivers-Lib:Map/Tools/Identifiants/AddDynamicId

scoreboard players add @s LegState 0
scoreboard players add @s LegTime 0

#Mettre le tag Fighting pour que l'entité puisse se battre
execute @s[tag=Fighting] ~ ~ ~ function Gunivers-Lib:Map/Tools/Identifiants/AddShooterId

scoreboard players tag @s[tag=Fighting] add AskLocation

execute @s[tag=HasWeapon1] ~ ~ ~ function Gunivers-Lib:Map/IA/Tools/GiveWeapon1
execute @s[tag=HasWeapon2] ~ ~ ~ function Gunivers-Lib:Map/IA/Tools/GiveWeapon2
execute @s[tag=HasWeapon4] ~ ~ ~ function Gunivers-Lib:Map/IA/Tools/GiveWeapon4

scoreboard players tag @s remove HasWeapon1
scoreboard players tag @s remove HasWeapon2
scoreboard players tag @s remove HasWeapon4

scoreboard players add @s cdShoot1st 0
scoreboard players add @s Reloading1st 0
