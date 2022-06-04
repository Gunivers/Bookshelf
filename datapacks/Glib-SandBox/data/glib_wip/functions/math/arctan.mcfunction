#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.math:arctan
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: true
# Note:
# - This function returns atan(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s glib.var0 (score): scalar on interval [-1000;1000]
# Output: @s glib.res0 (score): angle on interval ]-90;90[

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# CODE:

scoreboard players set math.arctan glib.var4 1
scoreboard players set @s[scores={glib.var0=..-1}] glib.var4 -1

scoreboard players operation math.arctan glib.var0 = @s glib.var0
scoreboard players operation math.arctan glib.var0 *= math.arctan glib.var4

#Numerateur
scoreboard players operation math.arctan glib.var2 = math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 *= math.arctan glib.var0

scoreboard players operation math.arctan glib.var1 = math.arctan glib.var2

scoreboard players operation math.arctan glib.var2 *= math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 /= 1000 glib.const

scoreboard players operation math.arctan glib.var1 += math.arctan glib.var2

scoreboard players operation @s glib.res0 = math.arctan glib.var0
scoreboard players operation @s glib.res0 *= 640 glib.const

scoreboard players operation @s glib.res0 += math.arctan glib.var1
scoreboard players operation @s glib.res0 *= 785 glib.const

#Dénominateur
scoreboard players operation math.arctan glib.var1 = math.arctan glib.var0
scoreboard players operation math.arctan glib.var1 *= 640 glib.const

scoreboard players operation math.arctan glib.var2 = math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 *= 1000 glib.const

scoreboard players operation math.arctan glib.var1 += math.arctan glib.var2
scoreboard players add math.arctan glib.var1 1000000

scoreboard players operation math.arctan glib.var2 = math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 *= math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 *= 640 glib.const
scoreboard players operation math.arctan glib.var2 /= 1000 glib.const

scoreboard players operation math.arctan glib.var1 += math.arctan glib.var2

scoreboard players operation math.arctan glib.var2 = math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 *= math.arctan glib.var0

scoreboard players operation math.arctan glib.var1 += math.arctan glib.var2

scoreboard players operation math.arctan glib.var2 *= math.arctan glib.var0
scoreboard players operation math.arctan glib.var2 /= 1000 glib.const

scoreboard players operation math.arctan glib.var1 += math.arctan glib.var2

#Division
scoreboard players operation @s glib.res0 /= math.arctan glib.var1
scoreboard players operation @s glib.res0 *= 2 glib.const
scoreboard players add @s glib.res0 1

scoreboard players operation @s glib.res0 *= 18000 glib.const
scoreboard players operation @s glib.res0 /= Pi2 glib.const

#Output
scoreboard players operation @s glib.res0 *= math.arctan glib.var4
scoreboard players operation @s glib.res0 /= 1000 glib.const

tellraw @a ["",{"text":"Input: "},{"score":{"name":"@s","objective":"glib.res0"}},{"text":"Output: "},{"score":{"name":"@s","objective":"glib.res0"}}]
