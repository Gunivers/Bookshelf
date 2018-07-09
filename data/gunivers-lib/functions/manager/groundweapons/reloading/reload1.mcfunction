# Ground Weapons / Reload 1
# Reloads the main weapon

# Updates the amo supply and the loaded amo scores
scoreboard players operation @s 1stAmo += @s 1stAmoLoaded
scoreboard players operation @s 1stAmo -= @s 1stLoadCapacity
scoreboard players operation @s 1stAmoLoaded = @s 1stLoadCapacity
scoreboard players operation @s[scores={1stAmo=..-1}] 1stAmoLoaded += @s 1stAmo
scoreboard players set @s[scores={1stAmo=..-1}] 1stAmo 0 

tag @s remove Reload1