# NAME: PGCD
# PATH: Gunivers-Lib:Math/PGCD

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Tmp4 (score dummy)
# - Tmp5 (score dummy)
# - Res (score dummy)

# INPUT:
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)

# OUTPUT:
# - Res (score dummy)

# CODE:
scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s Tmp3 -= @s Tmp2

scoreboard players operation @s[score_Tmp3_min=1] Tmp4 = @s Tmp2
scoreboard players operation @s[score_Tmp3_min=1] Tmp3 = @s Tmp1

scoreboard players operation @s[score_Tmp3=-1] Tmp4 = @s Tmp1
scoreboard players operation @s[score_Tmp3=-1] Tmp3 = @s Tmp2

scoreboard players tag @s[score_Tmp3_min=0,score_Tmp3=0] add PGCDfound

execute @s[tag=!PGCDfound] ~ ~ ~ function Gunivers-Lib:Math/PGCD-Loop

scoreboard players tag @s remove PGCDfound