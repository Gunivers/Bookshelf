#Spawn des armor_stands
summon armor_stand 143 93 36 {Tags:["ProjShooter","CanBeAlive","JustSpawned"],Rotation:[200f,-30f]}
summon armor_stand 156 93 36 {Tags:["ProjShooter","CanBeAlive","JustSpawned"],Rotation:[140f,-30f]}
summon armor_stand 143 93 28 {Tags:["ProjShooter","CanBeAlive","JustSpawned"],Rotation:[-90f,-30f]}
summon armor_stand 155 93 19 {Tags:["ProjShooter","CanBeAlive","JustSpawned"],Rotation:[50f,-30f]}
summon armor_stand 149 93 18 {Tags:["ProjShooter","CanBeAlive","JustSpawned"],Rotation:[10f,-30f]}
summon armor_stand 142 93 19 {Tags:["ProjShooter","CanBeAlive","JustSpawned"],Rotation:[-30f,-30f]}

#Initialisation
scoreboard players tag @e[tag=JustSpawned] add GetOrientation
scoreboard players tag @e[tag=JustSpawned] add SetOrientation
scoreboard players tag @e[tag=JustSpawned] add SetVectors

scoreboard players tag @e remove JustSpawned












