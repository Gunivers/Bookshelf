replaceitem entity @s[tag=!Glib_Debug] hotbar.8 minecraft:debug_stick{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}} 1
replaceitem entity @s[tag=Glib_Debug] hotbar.8 minecraft:debug_stick{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}} 1
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}] at @s run tag @p add Glib_Debug
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}] at @s run tag @p remove Glib_Debug
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}]
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}]