# This function was automatically generated.

execute as @a[tag=glib.menu,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu] add glib.menu.active
scoreboard players add @a[tag=glib.menu] glib.menu.page 0
execute as @a[tag=glib.menu,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu] remove glib.menu.nextPage
tag @a[tag=glib.menu] remove glib.menu.previousPage
tag @a[tag=glib.menu.close] remove glib.menu.active
tellraw @a[tag=glib.menu.close] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}, {"text": " Thank you for using Glibs!\n", "color": "dark_aqua", "bold": true}, {"text": " Share us your creations on twitter! ", "color": "gray"}, {"text": "@Gunivers_\n", "color": "gold", "clickEvent": {"action": "open_url", "value": "https://twitter.com/Gunivers_"}, "hoverEvent": {"action": "show_text", "contents": "Visit our Twitter page"}}]
execute as @a[tag=glib.menu.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.close] remove glib.menu
tag @a[tag=glib.menu.close] remove glib.menu.close

tellraw @a[tag=glib.menu] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] {"text": "   + Gamerules", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.gamerules"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] {"text": "   + Debug", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "   "}, {"text": "Documentation", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://glibs.rtfd.io"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "   "}, {"text": "Official website", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://glib.gunivers.net"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "   "}, {"text": "Our Discord", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://discord.gg/E8qq6tN"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=glib.menu,scores={glib.menu.page = 0}] [{"text": "   "}, {"text": "Support us", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://discord.gg/E8qq6tN"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]

tellraw @a[tag=glib.menu] [{"text": "\n"}, {"text": " x ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.close"}, "hoverEvent": {"action": "show_text", "contents": "Exit menu"}}, {"text": "Glib Menu", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.close"}, "hoverEvent": {"action": "show_text", "contents": "Exit menu"}}]