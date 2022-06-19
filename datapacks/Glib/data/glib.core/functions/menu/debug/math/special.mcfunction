# This function was automatically generated.

execute as @a[tag=glib.menu.debug.math.special,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.math.special] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.math.special] glib.menu.page 0
execute as @a[tag=glib.menu.debug.math.special,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.math.special,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.math.special,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.math.special,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.math.special] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.math.special] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.math.special] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.math.special] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.math.special,tag=glib.menu.debug.math] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.math.special] remove glib.menu.debug.math
tag @a[tag=glib.menu.debug.math.special.close] add glib.menu.debug.math
execute as @a[tag=glib.menu.debug.math.special.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.math.special.close] remove glib.menu.debug.math.special
tag @a[tag=glib.menu.debug.math.special.close] remove glib.menu.debug.math.special.close

tellraw @a[tag=glib.menu.debug.math.special] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.math.special,scores={glib.menu.page = 0},tag=!glib.debug.math.special.get_next_pow2] ["", {"text": "   get_next_pow2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.math.special,scores={glib.menu.page = 0},tag=glib.debug.math.special.get_next_pow2] ["", {"text": "   get_next_pow2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.math.special,scores={glib.menu.page = 0},tag=!glib.debug.math.special.random] ["", {"text": "   random: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.math.special,scores={glib.menu.page = 0},tag=glib.debug.math.special.random] ["", {"text": "   random: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.math.special] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.math.special.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / math / special", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.math.special.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]