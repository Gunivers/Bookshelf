# NAME: Pow-Loop
# PATH: Gunivers-Lib:Math/Child/Pow-Loop

# CHILD OF: Gunivers-Lib:Math/Pow

# CODE: 


scoreboard players operation @s Res *= @s Tmp1
scoreboard players remove @s Tmp3 1

function Gunivers-Lib:Math/Child/Pow-Loop if @s[score_Tmp3_min=2]
