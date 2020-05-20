replaceitem entity @s[tag=!Glib_Debug_Enabled] hotbar.8 minecraft:debug_stick{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}} 1
replaceitem entity @s[tag=Glib_Debug_Enabled] hotbar.8 minecraft:barrier{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}} 1
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}] at @s run tag @p add Glib_Debug_Enabled
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}] at @s run tag @p remove Glib_Debug_Enabled
tag @a[tag=Glib_Menu] remove Glib_Debug
tag @a[tag=!Glib_Debug_Enabled] remove Glib_Debug
tag @a[tag=Glib_Debug_Enabled,tag=!Glib_Menu] add Glib_Debug
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}]
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}]
