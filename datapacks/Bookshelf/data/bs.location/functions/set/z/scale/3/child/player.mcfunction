summon marker ~ ~ ~ {Tags:["bs.location.set"]}
execute store result entity @e[type=marker,tag=bs.location.set,limit=1] Pos[2] double 0.001 run scoreboard players get @s bs.loc.z
tp @s @e[type=marker,tag=bs.location.set,limit=1]
kill @e[type=marker,tag=bs.location.set]
