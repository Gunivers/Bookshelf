execute store result entity @s Pos[0] double 0.001 run scoreboard players get @a[tag=glib.setLocation,limit=1,sort=nearest] glib.locX
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @a[tag=glib.setLocation,limit=1,sort=nearest] glib.locY
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @a[tag=glib.setLocation,limit=1,sort=nearest] glib.locZ
execute at @s run tp @a[tag=glib.setLocation] ~ ~ ~
