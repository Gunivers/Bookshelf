# NAME: Factorial Loop
# PATH: Gunivers-Lib:Math/Child/Factorial-Loop
 
# CHILD OF: Gunivers-Lib:Math/Factorial
 
# CODE: 
scoreboard players operation @s Res *= @s Tmp2
scoreboard players remove @s Tmp2 1
function Gunivers-Lib:Math/Child/Factorial-Loop if @s[score_Tmp2_min=2]