# NAME: Add Health
# PATH: Gunivers-Lib: Gunivers-Lib/Entity/Health/UpdateHealthP

# CHILD OF: Gunivers-Lib/Entity/Health/Advenced

# CODE:
#0.5 coeur
effect @s[score_Health=-1,score_Health_min=-1] poison 1 4 true

#1 coeur
effect @s[score_Health=-2,score_Health_min=-5] absorption 1 0 true
effect @s[score_Health=-2,score_Health_min=-5] instant_damage 1 0 true

#3 coeurs
effect @s[score_Health=-6,score_Health_min=-11] instant_damage 1 0 true

#6 coeurs
effect @s[score_Health=-12] instant_damage 1 1 true

