summon marker ~ ~ ~ {Tags:["bs.location.set"]}
execute store result entity @e[type=marker,tag=bs.location.set,limit=1] Pos[1] double 1 run scoreboard players get @s bs.loc.y
tp @s @e[type=marker,tag=bs.location.set,limit=1]
kill @e[type=marker,tag=bs.location.set]
