#Passe les balles en réserve dans le chargeur sans dépasser le max de celui ci
scoreboard players operation @s 2ndAmo += @s 2ndAmoLoaded
scoreboard players operation @s 2ndAmo -= @s 2ndMaxAmo
scoreboard players operation @s 2ndAmoLoaded = @s 2ndMaxAmo
execute @s[score_2ndAmo=-1] ~ ~ ~ scoreboard players operation @s 2ndAmoLoaded += @s 2ndAmo
scoreboard players set @s[score_2ndAmo=-1] 2ndAmo 0