summon marker ~ ~ ~ {Tags:["bs.location.set"]}
say @e[type=marker,tag=bs.location.set,limit=1]
tellraw @a ["",{"text":"Loc set2 - x: "},{"score":{"name":"@s","objective":"bs.loc.x"}}]
execute store result entity @e[type=marker,tag=bs.location.set,limit=1] Pos[0] double 0.001 run scoreboard players get @s bs.loc.x
say @e[type=marker,tag=bs.location.set,limit=1]

execute store result entity @e[type=marker,tag=bs.location.set,limit=1] Pos[1] double 0.001 run scoreboard players get @s bs.loc.y
say @e[type=marker,tag=bs.location.set,limit=1]
execute store result entity @e[type=marker,tag=bs.location.set,limit=1] Pos[2] double 0.001 run scoreboard players get @s bs.loc.z
say @e[type=marker,tag=bs.location.set,limit=1]
execute as @e[type=marker,tag=bs.location.set,limit=1] as @s run function bs.location:get/scale/3

tp @s @e[type=marker,tag=bs.location.set,limit=1]
kill @e[type=marker,tag=bs.location.set]
