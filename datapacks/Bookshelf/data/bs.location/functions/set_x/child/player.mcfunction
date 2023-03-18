execute as @e[tag=bs.new] run function bs.core:entity/safe_kill
function bs.core:entity/summon
tp @e[tag=bs.new] @s
execute store result entity @e[tag=bs.new,limit=1] Pos[0] double 1 run scoreboard players get @s bs.loc.x
tp @s @e[tag=bs.new,limit=1]
execute as @e[tag=bs.new] run function bs.core:entity/safe_kill
