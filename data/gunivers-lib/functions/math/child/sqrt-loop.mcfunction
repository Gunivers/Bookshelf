# NAME: Square root
# PATH: gunivers-lib:math/child/sqrt-loop

# CHILD OF: gunivers-lib:math/sqrt

# CODE:
scoreboard players operation @s Tmp5 = @s Res
scoreboard players operation @s Tmp4 = @s Tmp3
scoreboard players operation @s Tmp4 /= @s Res
scoreboard players operation @s Tmp4 += @s Res
scoreboard players operation @s Tmp4 /= 2 Constant
scoreboard players operation @s Res = @s Tmp4

scoreboard players operation @s Tmp5 -= @s Res
# execute @s[score_Tmp5_min=0,score_Tmp5=0] ~ ~ ~ tellraw @a {"score":{"name":"@s","objective":"Tmp2"}}
scoreboard players set @s[scores={Tmp5=0}] Tmp2 0

scoreboard players remove @s Tmp2 1
execute as @s if score @s Tmp2 matches 1.. run function gunivers-lib:math/child/sqrt-loop