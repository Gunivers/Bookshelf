#Passe les balles en réserve dans le chargeur sans dépasser le max de celui ci
scoreboard players operation @s 1stAmo += @s 1stAmoLoaded
scoreboard players operation @s 1stAmo -= @s 1stMaxAmo
scoreboard players operation @s 1stAmoLoaded = @s 1stMaxAmo
execute @s[score_1stAmo=-1] ~ ~ ~ scoreboard players operation @s 1stAmoLoaded += @s 1stAmo
scoreboard players set @s[score_1stAmo=-1] 1stAmo 0 