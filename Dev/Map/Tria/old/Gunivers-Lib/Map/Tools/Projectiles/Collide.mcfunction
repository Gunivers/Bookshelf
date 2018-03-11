scoreboard players tag @s remove Collide

execute @s[tag=Bullet] ~ ~ ~ playsound block.stone.place ambient @a[r=15] 
execute @s[tag=TestVisible] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/GiveVisibility
scoreboard players tag @s[tag=ObusTank] add Explode
scoreboard players tag @s[tag=ProjFeu] add ProjFeuExpl
execute @s[tag=Rebound] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/Rebound

kill @s[tag=!NoKillCollide]
