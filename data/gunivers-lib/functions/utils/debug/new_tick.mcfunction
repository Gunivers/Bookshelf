scoreboard objectives add Glib_Debug_Tmp dummy
execute store result score @s Glib_Debug_Tmp run time query gametime
tellraw @s ["",{"text":"\n"},{"text":"---------- ","color":"black"},{"text":"Tick ","color":"gray"},{"score":{"name":"@s","objective":"Glib_Debug_Tmp"},"color":"gray"},{"text":" ----------","color":"black"},{"text":"\n "}]
scoreboard objectives remove Glib_Debug_Tmp