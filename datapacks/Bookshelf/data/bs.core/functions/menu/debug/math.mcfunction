# This function was automatically generated.

execute as @a[tag=bs.menu.debug.math,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.math] bs.menu.page 0
execute as @a[tag=bs.menu.debug.math,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.math] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.math] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.math] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.math,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math] remove bs.menu.debug
tag @a[tag=bs.menu.debug.math.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.math.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.close] remove bs.menu.debug.math
tag @a[tag=bs.menu.debug.math.close] remove bs.menu.debug.math.close

tellraw @a[tag=bs.menu.debug.math] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.math,scores={bs.menu.page = 0}] {"text": "   + algebra", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.algebra"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.math,scores={bs.menu.page = 0}] {"text": "   + bitwise", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.bitwise"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.math,scores={bs.menu.page = 0}] {"text": "   + common", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.common"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.math,scores={bs.menu.page = 0}] {"text": "   + special", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.special"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.math,scores={bs.menu.page = 0}] {"text": "   + trig", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.trig"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=bs.menu.debug.math] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / math", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]