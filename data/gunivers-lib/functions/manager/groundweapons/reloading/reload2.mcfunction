# Ground Weapons / Reload 2
# Reloads the secondary weapon

# Updates the amo supply and the loaded amo scores
scoreboard players operation @s 2ndAmo += @s 2ndAmoLoaded
scoreboard players operation @s 2ndAmo -= @s 2ndLoadCapacity
scoreboard players operation @s 2ndAmoLoaded = @s 2ndLoadCapacity
scoreboard players operation @s[scores={2ndAmo=..-1}] 2ndAmoLoaded += @s 2ndAmo
scoreboard players set @s[scores={2ndAmo=..-1}] 2ndAmo 0 

tag @s remove Reload2