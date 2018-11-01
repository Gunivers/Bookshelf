# NAME: Square root
# PATH: gunivers-lib:math/child/sqrt-loop

# CHILD OF: gunivers-lib:math/sqrt

# CODE:
scoreboard players operation @s Var5 = @s Res
scoreboard players operation @s Var4 = @s Var3
scoreboard players operation @s Var4 /= @s Res
scoreboard players operation @s Var4 += @s Res
scoreboard players operation @s Var4 /= 2 Constants
scoreboard players operation @s Res = @s Var4

scoreboard players operation @s Var5 -= @s Res
# execute @s[score_Var5_min=0,score_Var5=0] ~ ~ ~ tellraw @a {"score":{"name":"@s","objective":"Var2"}}
scoreboard players set @s[scores={Var5=0}] Var2 0

scoreboard players remove @s Var2 1
execute as @s if score @s Var2 matches 1.. run function gunivers-lib:math/child/sqrt-loop