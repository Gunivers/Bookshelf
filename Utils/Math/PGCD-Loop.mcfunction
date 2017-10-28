# NAME: PGCD-Loop
# PATH: Gunivers-Lib:Utils/Math/PGCD-Loop

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# CHILD OF: Gunivers-Lib:Utils/Math/PGCD

# CODE:

scoreboard players operation @s Tmp3 %= @s Tmp4

scoreboard players tag @s[score_Tmp3_min=0,score_Tmp3=0] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] Tmp5 = Tmp4
scoreboard players operation @s[tag=!PGCDfound] Tmp4 = Tmp3
scoreboard players operation @s[tag=!PGCDfound] Tmp3 = Tmp5

execute @s[tag=!PGCDfound] ~ ~ ~ function Gunivers-Lib:Utils/Math/PGCD-Loop