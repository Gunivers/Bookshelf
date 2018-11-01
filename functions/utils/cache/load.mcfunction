execute store result score locateX Cache run data get entity @e[name=glCacheLoc,limit=1] Pos[0] 1
execute store result score locateY Cache run data get entity @e[name=glCacheLoc,limit=1] Pos[1] 1
execute store result score locateZ Cache run data get entity @e[name=glCacheLoc,limit=1] Pos[2] 1
execute as @e[name=glCacheLoc,limit=1] run scoreboard players operation cacheX Cache = locateX Cache
execute as @e[name=glCacheLoc,limit=1] run scoreboard players operation cacheY Cache = locateY Cache
execute as @e[name=glCacheLoc,limit=1] run scoreboard players operation cacheZ Cache = locateZ Cache
execute as @e[name=glCacheLoc,limit=1] run scoreboard players add locateX Cache 1
execute as @e[name=glCacheLoc,limit=1] run scoreboard players add locateY Cache 2
execute as @e[name=glCacheLoc,limit=1] run scoreboard players add locateZ Cache 1
execute at @e[name=glCacheLoc,limit=1] run setblock ~ ~ ~ structure_block{mode:"LOAD",posX:0,posY:0,posZ:0,sizeX:16,sizeY:16,sizeZ:16,name:"gunivers-lib:cache",ignoreEntities:0b} replace
execute at @e[name=glCacheLoc,limit=1] run setblock ~ ~1 ~ redstone_block
kill @e[tag=cacheMarker]