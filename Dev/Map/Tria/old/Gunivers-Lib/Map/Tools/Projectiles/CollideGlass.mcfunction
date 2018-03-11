scoreboard players tag @s remove CollideGlass

scoreboard players operation @s Damage *= 2 Constant
scoreboard players operation @s Damage /= 3 Constant
execute @s ~ ~ ~ particle blockcrack ~ ~ ~ 0 0.1 0 0 40 force @a 20
execute @s ~ ~ ~ playsound block.glass.break ambient @a[r=15] ~ ~ ~ 1 0.8