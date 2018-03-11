scoreboard players tag @s remove Dead 
execute @s ~ ~ ~ scoreboard players tag @e[tag=Reviving,r=3,c=1] remove MessageSaid
execute @s ~ ~ ~ scoreboard players tag @e[tag=Reviving,r=3,c=1] remove Reviving
effect @s slowness 0
effect @s jump_boost 0
tp @s ~ ~1 ~
scoreboard players tag @s add CanRecieveBullet
scoreboard players tag @s add Unlock1st
scoreboard players tag @s remove RevVillager
scoreboard players tag @s remove Revived
