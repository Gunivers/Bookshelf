replaceitem entity @s[tag=!glib.debug.Enabled] hotbar.8 minecraft:debug_stick{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}} 1
replaceitem entity @s[tag=glib.debug.Enabled] hotbar.8 minecraft:barrier{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}} 1
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}] at @s run tag @p add glib.debug.Enabled
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}] at @s run tag @p remove glib.debug.Enabled
tag @a[tag=Glib_Menu] remove glib.debug
tag @a[tag=!glib.debug.Enabled] remove glib.debug
tag @a[tag=glib.debug.Enabled,tag=!Glib_Menu] add glib.debug
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}]
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}]
