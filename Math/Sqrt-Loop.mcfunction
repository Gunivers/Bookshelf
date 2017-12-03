# NAME: Racine carré
# PATH: Gunivers-Lib:Utils/Math/Sqrt

# AUTHOR: Theogiraudet/Oromis
# CONTRIBUTORS:
# - Luludatra
# - KubbyDev

# VERSION: 1.1
# MINECRAFT: 1.12

# CHILD OF: Gunivers-Lib:Utils/Math/Sqrt

# NOTE: Boucle de resolution de la racine carrée d'un nombre

# CODE:
scoreboard players operation @s Tmp5 = @s Res
scoreboard players operation @s Tmp4 = @s Tmp3
scoreboard players operation @s Tmp4 /= @s Res
scoreboard players operation @s Tmp4 += @s Res
scoreboard players operation @s Tmp4 /= 2 Constant
scoreboard players operation @s Res = @s Tmp4

scoreboard players operation @s Tmp5 -= @s Res
# execute @s[score_Tmp5_min=0,score_Tmp5=0] ~ ~ ~ tellraw @a {"score":{"name":"@s","objective":"Tmp2"}}
scoreboard players set @s[score_Tmp5_min=0,score_Tmp5=0] Tmp2 0

scoreboard players remove @s Tmp2 1
execute @s[score_Tmp2_min=1] ~ ~ ~ function Gunivers-Lib:Utils/Math/Sqrt-Loop