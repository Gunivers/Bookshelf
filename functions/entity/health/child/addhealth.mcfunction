# NAME: Add Health
# PATH: gunivers-lib:entity/health/child/addhealth

# CHILD OF: gunivers-lib:entity/health/sethealth

# CODE:
#3 coeurs
effect give @s[scores={Health=6..11}] instant_health 1 0 true

#6 coeurs
effect give @s[scores={Health=12..}] instant_health 1 1 true

#Demi coeurs restants
effect give @s[scores={Health=1..}] regeneration 1 5 true
