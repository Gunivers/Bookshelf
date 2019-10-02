
# SYSTEME PLACEMENT VISION
# Placement de la vision des entités pour être en orientation avec RS_Centre
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard players set 360 Constant 360

# ---------------------------------------------------------------------------------------

scoreboard players operation @s pla_vision += @s vision
scoreboard players operation @s pla_vision %= 360 Constant

tp @s ~ ~ ~ 0 ~

tp @s[score_pla_vision_min=180] ~ ~ ~ ~180 ~
scoreboard players remove @s[score_pla_vision_min=180] pla_vision 180

tp @s[score_pla_vision_min=90] ~ ~ ~ ~90 ~
scoreboard players remove @s[score_pla_vision_min=90] pla_vision 90

tp @s[score_pla_vision_min=45] ~ ~ ~ ~45 ~
scoreboard players remove @s[score_pla_vision_min=45] pla_vision 45

tp @s[score_pla_vision_min=23] ~ ~ ~ ~23 ~
scoreboard players remove @s[score_pla_vision_min=23] pla_vision 23

tp @s[score_pla_vision_min=12] ~ ~ ~ ~12 ~
scoreboard players remove @s[score_pla_vision_min=12] pla_vision 12

tp @s[score_pla_vision_min=6] ~ ~ ~ ~6 ~
scoreboard players remove @s[score_pla_vision_min=6] pla_vision 6

tp @s[score_pla_vision_min=3] ~ ~ ~ ~3 ~
scoreboard players remove @s[score_pla_vision_min=3] pla_vision 3

tp @s[score_pla_vision_min=2] ~ ~ ~ ~2 ~
scoreboard players remove @s[score_pla_vision_min=23] pla_vision 2

tp @s[score_pla_vision_min=1] ~ ~ ~ ~1 ~
scoreboard players remove @s[score_pla_vision_min=1] pla_vision 1










