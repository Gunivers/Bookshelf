# NAME: Add Health
# PATH: gunivers-lib:entity/health/child/removehealth

# CHILD OF: gunivers-lib:entity/health/sethealth

# CODE:
#0.5 coeur
effect give @s[scores={Health=-1}] poison 1 4 true

#1 coeur
effect give @s[scores={Health=-5..-2}] absorption 1 0 true
effect give @s[scores={Health=-5..-2}] instant_damage 1 0 true

#3 coeurs
effect give @s[scores={Health=-11..-6}] instant_damage 1 0 true

#6 coeurs
effect give @s[scores={Health=..-12}] instant_damage 1 1 true

