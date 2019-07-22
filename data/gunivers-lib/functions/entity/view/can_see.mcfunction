# NAME: Can see
# PATH: gunivers-lib:entity/view/can_see

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# INPUT
# none

# OUTPUT
# - Glib_CanSee (tag)

# CODE:
#____________________________________________________________________________________________________

tag @s remove Glib_CanSee

execute at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["Glib","Glib_CanSee_Aim","Glib_CanSee_Tmp"]}

# CONFIG: Var1 -> Range*5 (1 blocs -> Var1 = 5)
execute unless entity @s[tag=Glib_Override_Config] run scoreboard players set @e[tag=Glib_CanSee_Aim] Var1 100
# END CONFIG

summon area_effect_cloud ~ ~1 ~ {Tags:["Glib","Glib_CanSee_Target","Glib_CanSee_Tmp"]}
execute as @e[tag=Glib_CanSee_Aim] at @s run function gunivers-lib:entity/view/child/can_see-loop

execute at @e[tag=Glib_CanSee_Aim] if entity @e[tag=Glib_CanSee_Target,distance=..1] run tag @s add Glib_CanSee

kill @e[tag=Glib_CanSee_Tmp]

