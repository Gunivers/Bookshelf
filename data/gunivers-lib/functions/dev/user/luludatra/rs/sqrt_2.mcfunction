
# SYSTEME SQRT_2
# Boucle à executer 20 fois
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard players operation @s Temp2 = @s Operation
scoreboard players operation @s Operation /= @s Temp
scoreboard players operation @s Temp += @s Operation
scoreboard players operation @s Temp /= 2 Constant
scoreboard players operation @s Operation = @s Temp2

scoreboard players remove @s Loop 1
execute @s[score_Loop_min=1] ~ ~ ~ /function RS:sqrt_2

