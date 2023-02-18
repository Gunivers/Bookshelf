execute store result entity @s Pos[0] double 0.001 run scoreboard players get @a[tag=bs.setLocation,limit=1,sort=nearest] bs.locX
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @a[tag=bs.setLocation,limit=1,sort=nearest] bs.locY
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @a[tag=bs.setLocation,limit=1,sort=nearest] bs.locZ
execute at @s run tp @a[tag=bs.setLocation] ~ ~ ~
