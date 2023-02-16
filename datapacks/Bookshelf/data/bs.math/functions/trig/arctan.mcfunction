#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:arctan
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: true
# Note:
# - This function returns atan(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score): scalar on interval [-1000;1000]
# Output: @s bs.res0 (score): angle on interval ]-90;90[

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# CODE:

scoreboard players set math.arctan bs.var4 1
scoreboard players set @s[scores={bs.var0=..-1}] bs.var4 -1

scoreboard players operation math.arctan bs.var0 = @s bs.var0
scoreboard players operation math.arctan bs.var0 *= math.arctan bs.var4

#Numerateur
scoreboard players operation math.arctan bs.var2 = math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 *= math.arctan bs.var0

scoreboard players operation math.arctan bs.var1 = math.arctan bs.var2

scoreboard players operation math.arctan bs.var2 *= math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 /= 1000 bs.const

scoreboard players operation math.arctan bs.var1 += math.arctan bs.var2

scoreboard players operation @s bs.res0 = math.arctan bs.var0
scoreboard players operation @s bs.res0 *= 640 bs.const

scoreboard players operation @s bs.res0 += math.arctan bs.var1
scoreboard players operation @s bs.res0 *= 785 bs.const

#Dénominateur
scoreboard players operation math.arctan bs.var1 = math.arctan bs.var0
scoreboard players operation math.arctan bs.var1 *= 640 bs.const

scoreboard players operation math.arctan bs.var2 = math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 *= 1000 bs.const

scoreboard players operation math.arctan bs.var1 += math.arctan bs.var2
scoreboard players add math.arctan bs.var1 1000000

scoreboard players operation math.arctan bs.var2 = math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 *= math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 *= 640 bs.const
scoreboard players operation math.arctan bs.var2 /= 1000 bs.const

scoreboard players operation math.arctan bs.var1 += math.arctan bs.var2

scoreboard players operation math.arctan bs.var2 = math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 *= math.arctan bs.var0

scoreboard players operation math.arctan bs.var1 += math.arctan bs.var2

scoreboard players operation math.arctan bs.var2 *= math.arctan bs.var0
scoreboard players operation math.arctan bs.var2 /= 1000 bs.const

scoreboard players operation math.arctan bs.var1 += math.arctan bs.var2

#Division
scoreboard players operation @s bs.res0 /= math.arctan bs.var1
scoreboard players operation @s bs.res0 *= 2 bs.const
scoreboard players add @s bs.res0 1

scoreboard players operation @s bs.res0 *= 18000 bs.const
scoreboard players operation @s bs.res0 /= Pi2 bs.const

#Output
scoreboard players operation @s bs.res0 *= math.arctan bs.var4

# tellraw @a ["",{"text":"Input: "},{"score":{"name":"@s","objective":"bs.res0"}},{"text":"Output: "},{"score":{"name":"@s","objective":"bs.res0"}}]
