# NAME: Move Entity By Vector
# PATH: Glib:Entity/move/child/by_vector/loop1

# CHILD OF: Glib:Entity/move/by_vector

# CODE:
tag @s remove FactorIncrease

execute if entity @s[scores={Var5=1..}] run scoreboard players operation @s Var5 *= -1 Constant
execute if score @s Var1 < @s Var5 run tag @s add FactorIncrease
execute if score @s Var2 < @s Var5 run tag @s add FactorIncrease
execute if score @s Var3 < @s Var5 run tag @s add FactorIncrease

execute if entity @s[scores={Var5=..-1}] run scoreboard players operation @s Var5 *= -1 Constant
execute if score @s Var1 > @s Var5 run tag @s add FactorIncrease
execute if score @s Var2 > @s Var5 run tag @s add FactorIncrease
execute if score @s Var3 > @s Var5 run tag @s add FactorIncrease

scoreboard players operation @s[tag=FactorIncrease] Var4 *= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var1 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var2 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var3 /= 2 Constant

# DEBUG
execute at @s[tag=Glib_Debug,tag=Debug_Entity_Move_By_Vector] run summon falling_block ~ ~ ~ {BlockState:{Name:"oak_fence"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG


execute as @s[tag=FactorIncrease] at @s run function glib:entity/move/child/by_vector/loop1

