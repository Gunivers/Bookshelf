
# SYSTEME PLACEMENT SUR AXE Y
# Placement des entités sur l'axe Y
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add pla_y dummy

# ---------------------------------------------------------------------------------------

scoreboard players tag @s[tag=yP] remove yP
scoreboard players tag @s[tag=yN] remove yN

scoreboard players operation @s pla_y = @s y_dist
scoreboard players tag @s[score_pla_y_min=0] add yP
scoreboard players tag @s[score_pla_y=-1] add yN

scoreboard players operation @s[score_pla_y=-1] pla_y *= -1 Constant

tp @s[score_pla_y_min=23000,tag=yP] ~ ~23 ~
tp @s[score_pla_y_min=23000,tag=yN] ~ ~-23 ~
scoreboard players remove @s[score_pla_y_min=23000] pla_y 23000

tp @s[score_pla_y_min=12000,tag=yP] ~ ~12 ~
tp @s[score_pla_y_min=12000,tag=yN] ~ ~-12 ~
scoreboard players remove @s[score_pla_y_min=12000] pla_y 12000

tp @s[score_pla_y_min=6000,tag=yP] ~ ~6 ~
tp @s[score_pla_y_min=6000,tag=yN] ~ ~-6 ~
scoreboard players remove @s[score_pla_y_min=6000] pla_y 6000

tp @s[score_pla_y_min=3000,tag=yP] ~ ~3 ~
tp @s[score_pla_y_min=3000,tag=yN] ~ ~-3 ~
scoreboard players remove @s[score_pla_y_min=3000] pla_y 3000

tp @s[score_pla_y_min=2000,tag=yP] ~ ~2 ~
tp @s[score_pla_y_min=2000,tag=yN] ~ ~-2 ~
scoreboard players remove @s[score_pla_y_min=2000] pla_y 2000

tp @s[score_pla_y_min=1000,tag=yP] ~ ~1 ~
tp @s[score_pla_y_min=1000,tag=yN] ~ ~-1 ~
scoreboard players remove @s[score_pla_y_min=1000] pla_y 1000

tp @s[score_pla_y_min=500,tag=yP] ~ ~0.5 ~
tp @s[score_pla_y_min=500,tag=yN] ~ ~-0.5 ~
scoreboard players remove @s[score_pla_y_min=500] pla_y 500

tp @s[score_pla_y_min=250,tag=yP] ~ ~0.25 ~
tp @s[score_pla_y_min=250,tag=yN] ~ ~-0.25 ~
scoreboard players remove @s[score_pla_y_min=250] pla_y 250

tp @s[score_pla_y_min=125,tag=yP] ~ ~0.125 ~
tp @s[score_pla_y_min=125,tag=yN] ~ ~-0.125 ~
scoreboard players remove @s[score_pla_y_min=125] pla_y 125

tp @s[score_pla_y_min=63,tag=yP] ~ ~0.063 ~
tp @s[score_pla_y_min=63,tag=yN] ~ ~-0.063 ~
scoreboard players remove @s[score_pla_y_min=63] pla_y 63

tp @s[score_pla_y_min=32,tag=yP] ~ ~0.032 ~
tp @s[score_pla_y_min=32,tag=yN] ~ ~-0.032 ~
scoreboard players remove @s[score_pla_y_min=32] pla_y 32

tp @s[score_pla_y_min=16,tag=yP] ~ ~0.016 ~
tp @s[score_pla_y_min=16,tag=yN] ~ ~-0.016 ~
scoreboard players remove @s[score_pla_y_min=16] pla_y 16

tp @s[score_pla_y_min=8,tag=yP] ~ ~0.008 ~
tp @s[score_pla_y_min=8,tag=yN] ~ ~-0.008 ~
scoreboard players remove @s[score_pla_y_min=8] pla_y 8

tp @s[score_pla_y_min=4,tag=yP] ~ ~0.004 ~
tp @s[score_pla_y_min=4,tag=yN] ~ ~-0.004 ~
scoreboard players remove @s[score_pla_y_min=4] pla_y 4

tp @s[score_pla_y_min=2,tag=yP] ~ ~0.002 ~
tp @s[score_pla_y_min=2,tag=yN] ~ ~-0.002 ~
scoreboard players remove @s[score_pla_y_min=2] pla_y 2

tp @s[score_pla_y_min=1,tag=yP] ~ ~0.001 ~
tp @s[score_pla_y_min=1,tag=yN] ~ ~-0.001 ~
scoreboard players remove @s[score_pla_y_min=1] pla_y 1



