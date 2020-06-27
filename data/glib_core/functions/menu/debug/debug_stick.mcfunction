replaceitem entity @s[tag=!glib.debug.enabled] hotbar.8 minecraft:debug_stick{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}} 1
replaceitem entity @s[tag=glib.debug.enabled] hotbar.8 minecraft:barrier{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}} 1
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}] at @s run tag @p add glib.debug.enabled
execute as @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}] at @s run tag @p remove glib.debug.enabled
tag @a[tag=glib.menu] remove glib.debug
tag @a[tag=!glib.debug.enabled] remove glib.debug
tag @a[tag=glib.debug.enabled,tag=!glib.menu] add glib.debug
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to start capture)\""}}}}]
kill @e[nbt={Item:{tag:{display:{Name:"\"Gunivers Debugger (Drop to stop capture)\""}}}}]
