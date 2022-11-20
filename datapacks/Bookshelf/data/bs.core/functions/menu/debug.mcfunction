# This function was automatically generated.

execute as @a[tag=bs.menu.debug,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug] bs.menu.page 0
execute as @a[tag=bs.menu.debug,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 1
execute as @a[tag=bs.menu.debug] if score @s bs.menu.page matches 2.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug,tag=bs.menu] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug] remove bs.menu
tag @a[tag=bs.menu.debug.close] add bs.menu
execute as @a[tag=bs.menu.debug.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.close] remove bs.menu.debug
tag @a[tag=bs.menu.debug.close] remove bs.menu.debug.close

tellraw @a[tag=bs.menu.debug] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0},tag=!bs.debug.stick] ["", {"text": "   Debug stick: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.stick"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.stick"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0},tag=bs.debug.stick] ["", {"text": "   Debug stick: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.stick"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.stick"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] [{"text": "    ", "color": "gray"}]
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + biome", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.biome"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + block", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.block"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + cache", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.cache"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + color", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.color"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + health", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.health"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + id", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.id"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + item", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.item"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + link", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.link"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + location", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.location"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + mapedit", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.mapedit"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + math", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + memory", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] {"text": "   + move", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.move"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 0}] [{"text": "\n   Page ", "color": "dark_aqua"}, {"text": "[<]", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.previousPage"}, "hoverEvent": {"action": "show_text", "contents": "Previous page"}}, {"text": " 1 / 2 ", "color": "dark_aqua"}, {"text": "[>]", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.nextPage"}, "hoverEvent": {"action": "show_text", "contents": "Next page"}}]


# Page 2

tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + orientation", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.orientation"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + schedule", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.schedule"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + time", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.time"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + tree", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.tree"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + vector", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + view", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.view"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + xp", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.xp"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + example", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.example"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] {"text": "   + lgdir", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=bs.menu.debug,scores={bs.menu.page = 1}] [{"text": "\n   Page ", "color": "dark_aqua"}, {"text": "[<]", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.previousPage"}, "hoverEvent": {"action": "show_text", "contents": "Previous page"}}, {"text": " 2 / 2 ", "color": "dark_aqua"}, {"text": "[>]", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.nextPage"}, "hoverEvent": {"action": "show_text", "contents": "Next page"}}]


tellraw @a[tag=bs.menu.debug] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]