# NAME: Update Health
# PATH: Gunivers-Lib: Gunivers-Lib/Entity/Health/UpdateHealthM

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Health (score dummy)
# - Tmp1 (score dummy)

# INPUT:
# - Health (score dummy)

# OUTPUT: None

# CODE:


scoreboard players operation @s Tmp1 = @s Health

#3 coeurs
effect @s[score_Tmp1_min=6,score_Tmp1=11] instant_health 1 0 true
scoreboard players remove @s[score_Tmp1_min=6,score_Tmp1=11] Tmp1 6

#6 coeurs
effect @s[score_Tmp1_min=12] instant_health 1 1 true
scoreboard players remove @s[score_Tmp1_min=12] Tmp1 12

#Demi coeurs restants
effect @s[score_Tmp1_min=1] regeneration 1 255 true

