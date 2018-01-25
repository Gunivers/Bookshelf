# NAME: Add Health
# PATH: Gunivers-Lib: Gunivers-Lib/Entity/Health/UpdateHealthP

# CHILD OF: Gunivers-Lib/Entity/Health/Advenced

# CODE:
#3 coeurs
effect @s[score_Health_min=6,score_Health=11] instant_health 1 0 true

#6 coeurs
effect @s[score_Health_min=12] instant_health 1 1 true

#Demi coeurs restants
effect @s[score_Health_min=1] regeneration 1 5 true
