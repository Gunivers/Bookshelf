# NAME: Aimed block
# PATH: gunivers-lib:entity/view/aimed_block

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Id (module)
# - Vars (module)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT:
scoreboard objectives add Var1 dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Id
function gunivers-lib:entity/id/check_parent
kill @e[tag=AimedBlock,tag=ParentIdMatch]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["AimedBlock","NewAimedBlock"]}
scoreboard players operation @e[tag=NewAimedBlock] ParentId = @s Id
tp @e[tag=NewAimedBlock] @s
execute at @s run tp @e[tag=NewAimedBlock] ~ ~1.7 ~

# CONFIG: Var1 -> Range*10 (10 blocs -> Var1 = 100)
scoreboard players set @e[tag=NewAimedBlock] Var1 100
# END CONFIG
execute as @e[tag=NewAimedBlock] at @s run function gunivers-lib:entity/view/child/aimed_block_raycast
execute as @e[tag=NewAimedBlock] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
tag @e remove NewAimedBlock