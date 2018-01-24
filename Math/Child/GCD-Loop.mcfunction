# NAME: GCD-Loop
# PATH: Gunivers-Lib:Math/Child/GCD-Loop

# CHILD OF: Gunivers-Lib:Math/PGCD

# CODE:

scoreboard players operation @s Tmp3 %= @s Tmp4

scoreboard players tag @s[score_Tmp3_min=0,score_Tmp3=0] add PGCDfound

scoreboard players operation @s[tag=!PGCDfound] Tmp5 = Tmp4
scoreboard players operation @s[tag=!PGCDfound] Tmp4 = Tmp3
scoreboard players operation @s[tag=!PGCDfound] Tmp3 = Tmp5

execute @s[tag=!PGCDfound] ~ ~ ~ function Gunivers-Lib:Math/Child/GCD-Loop