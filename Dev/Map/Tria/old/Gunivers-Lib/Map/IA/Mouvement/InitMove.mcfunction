#Initialisation
execute @s ~ ~ ~ summon Zombie ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:256},{Name:"generic.movementSpeed",Base:0.31}],Tags:["CanBeAlive","NoFire","Invisible","Invincible","IAmove","JustSpawned"],Silent:1}
execute @s ~ ~ ~ scoreboard players operation @e[tag=JustSpawned,r=2,c=1] DynamicId = @s DynamicId 
scoreboard players set @e[tag=JustSpawned] Team 1
scoreboard players tag @s remove InitMoveIA
scoreboard players tag @s remove MoveFiniIA
scoreboard players tag @e remove JustSpawned


