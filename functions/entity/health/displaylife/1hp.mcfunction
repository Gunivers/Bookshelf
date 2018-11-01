# NAME: Display Life
# PATH: gunivers-lib:entity/health/displaylife

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# CHILD OF: gunivers-lib:entity/health/gethealth

# NOTE: This function display the life of entity having 1 HP in the CustomName slot.
# The parent function need to be active to the work of Display Life.

# CODE:

execute as @e[type=!player] run data merge entity @s[scores={Health=1},nbt={Attributes:[{Name:generic.maxHealth,Base:1.0d}]}] {CustomNameVisible:1,CustomName:"[\"\",{\"text\":\"\",\"color\":\"dark_red\"},{\"text\":\"❤\",\"color\":\"gold\"},{\"text\":\"\",\"color\":\"dark_gray\"}]"}




