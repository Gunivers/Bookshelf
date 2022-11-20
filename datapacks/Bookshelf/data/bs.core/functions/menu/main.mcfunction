# This function was automatically generated.

execute as @a[tag=bs.menu,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu] add bs.menu.active
scoreboard players add @a[tag=bs.menu] bs.menu.page 0
execute as @a[tag=bs.menu,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu] remove bs.menu.nextPage
tag @a[tag=bs.menu] remove bs.menu.previousPage
tag @a[tag=bs.menu.close] remove bs.menu.active
tellraw @a[tag=bs.menu.close] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}, {"text": " Thank you for using Bookshelf!\n", "color": "dark_aqua", "bold": true}, {"text": " Share us your creations on twitter! ", "color": "gray"}, {"text": "@Gunivers_\n", "color": "gold", "clickEvent": {"action": "open_url", "value": "https://twitter.com/Gunivers_"}, "hoverEvent": {"action": "show_text", "contents": "Visit our Twitter page"}}]
execute as @a[tag=bs.menu.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.close] remove bs.menu
tag @a[tag=bs.menu.close] remove bs.menu.close

tellraw @a[tag=bs.menu] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] {"text": "   + Gamerules", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.gamerules"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] {"text": "   + Debug", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "   "}, {"text": "Documentation", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://mc-bookshelf.rtfd.io"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "   "}, {"text": "Official website", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://bs.gunivers.net"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "   "}, {"text": "Our Discord", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://discord.gg/E8qq6tN"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=bs.menu,scores={bs.menu.page = 0}] [{"text": "   "}, {"text": "Support us", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://discord.gg/E8qq6tN"}, "hoverEvent": {"action": "show_text", "contents": "Click to follow the link"}}, {"text": " ➥", "color": "blue"}]

tellraw @a[tag=bs.menu] [{"text": "\n"}, {"text": " x ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.close"}, "hoverEvent": {"action": "show_text", "contents": "Exit menu"}}, {"text": "bs Menu", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.close"}, "hoverEvent": {"action": "show_text", "contents": "Exit menu"}}]