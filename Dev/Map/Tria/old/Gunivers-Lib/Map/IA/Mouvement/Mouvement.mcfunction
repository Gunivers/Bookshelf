#Fait se déplacer une IA vers une cible.
#La cible est un villageois: /summon Villager ~ ~ ~ {NoAI:1,Tags:["Team2","TargetIA","Invisible","CanBeAlive","Invincible"],Silent:1}
#Le déplacement se fait en suivant un zombie, il bénéficie donc d'un pathfinding.
#Tag add MoveIA pour démarrer un déplacement (l'entité doit avoir été initialisée (Tag add InitMoveIA et InitIA (Cette initialisation n'est nécessaire qu'une seule fois)))
#Tag add FinMouvement pour stopper le déplacement manuellement (Sinon il est arreté a l'approche de la cible)

#Annule le mouvement si l'entité est proche d'une cible importante
scoreboard players tag @e remove DontTestTarget
execute @e[type=villager,tag=ImportantTarget] ~ ~ ~ scoreboard players tag @e[tag=MoveIA,r=2] add FinMouvement
execute @e[type=villager,tag=ImportantTarget] ~ ~ ~ scoreboard players tag @e[tag=MoveIA,r=4] add DontTestTarget

#Detection de l'absence de cibles
execute @e[tag=MoveIA] ~ ~ ~ scoreboard players add @s[tag=!DontTestTarget] TimerTool2 1
execute @e[type=villager,tag=TargetIA] ~ ~ ~ execute @e[tag=MoveIA] ~ ~ ~ scoreboard players set @s[tag=!DontTestTarget] TimerTool2 0
execute @a[tag=Followed] ~ ~ ~ execute @e[tag=MoveIA] ~ ~ ~ scoreboard players set @s[tag=FollowPlayer] TimerTool2 0
execute @e[tag=MoveIA,score_TimerTool2_min=40] ~ ~ ~ scoreboard players tag @s[tag=!DontTestTarget] add FinMouvement
execute @e[tag=MoveIA,score_TimerTool2_min=40] ~ ~ ~ scoreboard players tag @s[tag=!DontTestTarget] remove ConstantMove

#Fin du déplacement
scoreboard players tag @e[tag=WaitForPlayer] add StayOnReached
execute @a[score_Id_min=1,score_Id=4] ~ ~ ~ scoreboard players tag @e[tag=WaitForPlayer,r=10] remove StayOnReached
execute @a[score_Id_min=1,score_Id=4] ~ ~ ~ scoreboard players tag @e[tag=WaitForPlayer,r=10] remove WaitForPlayer
execute @e[tag=TargetIA] ~ ~ ~ scoreboard players tag @e[tag=MoveIA,r=1,c=1] add FinMouvement
function Gunivers-Lib:Map/IA/Mouvement/FinMouvement if @e[tag=FinMouvement]

#Summon le zombie
execute @e[tag=MoveIA] ~ ~ ~ execute @s[tag=InitMoveIA] ~ ~ ~ function Gunivers-Lib:Map/IA/Mouvement/InitMove

#Tp de l'armor stand sur le zombie et annulation de l'animation de marche si le zombie ne bouge pas
execute @e[tag=MoveIA] ~ ~ ~ scoreboard players set @s[tag=!NoAnimLegs] AnimMouvement 1
execute @e[tag=MoveIA] ~ ~ ~ function Gunivers-Lib:Map/Tools/TpToSameId

#Detection de l'absence du zombie
scoreboard players set @e[tag=MoveIA] Tmp 1
execute @e[type=zombie,tag=IAmove] ~ ~ ~ scoreboard players set @e[tag=MoveIA,r=1,c=1] Tmp 0
scoreboard players tag @e[tag=MoveIA,score_Tmp_min=1] add InitMoveIA

#Set la vitesse de marche de l'IA + vitesse de l'animation
scoreboard players set @e[tag=MoveIA] AnimMoveSpeed 4
scoreboard players set @e[tag=RunIA] AnimMoveSpeed 6
scoreboard players set @e[tag=TankIA] AnimMoveSpeed 0
execute @e[tag=MoveIA,score_AnimMoveSpeed_min=4,score_AnimMoveSpeed=4] ~ ~ ~ entitydata @e[type=zombie,tag=IAmove,r=2,c=1] {Attributes:[{Name:"generic.movementSpeed",Base:0.34}]}
execute @e[tag=MoveIA,score_AnimMoveSpeed_min=6,score_AnimMoveSpeed=6] ~ ~ ~ entitydata @e[type=zombie,tag=IAmove,r=2,c=1] {Attributes:[{Name:"generic.movementSpeed",Base:0.45}]}
execute @e[tag=MoveIA,score_AnimMoveSpeed_min=0,score_AnimMoveSpeed=0] ~ ~ ~ entitydata @e[type=zombie,tag=IAmove,r=2,c=1] {Attributes:[{Name:"generic.movementSpeed",Base:0.6}]}

#Divers
scoreboard players set @e[type=zombie,tag=IAmove] Team 1
scoreboard players set @e[tag=MoveIA] LineMoveTime 0
scoreboard players tag @e[tag=MoveIA] remove LocUpdated