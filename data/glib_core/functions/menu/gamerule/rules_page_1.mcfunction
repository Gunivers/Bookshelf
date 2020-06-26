# NAME: Menu G-Lib
# PATH: glib:menu

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:

# Anounce Advancements
execute store result score menu.rules.announceAdvancement glib.data run gamerule announceAdvancements
execute if score menu.rules.announceAdvancement glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Announce Advancements: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule announceAdvancements false"},"hoverEvent":{"action":"show_text","value":"Disable Announce Advancements"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule announceAdvancements false"},"hoverEvent":{"action":"show_text","value":"Disable Announce Advancements"}}]
execute if score menu.rules.announceAdvancement glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Announce Advancements: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule announceAdvancements true"},"hoverEvent":{"action":"show_text","value":"Enable Announce Advancements"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule announceAdvancements true"},"hoverEvent":{"action":"show_text","value":"Enable Announce Advancements"}}]

# Command Block Output
execute store result score menu.rules.commandBlockOutput glib.data run gamerule commandBlockOutput
execute if score menu.rules.commandBlockOutput glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Command Block Output: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule commandBlockOutput false"},"hoverEvent":{"action":"show_text","value":"Disable Command Block Output"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule commandBlockOutput false"},"hoverEvent":{"action":"show_text","value":"Disable Command Block Output"}}]
execute if score menu.rules.commandBlockOutput glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Command Block Output: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule commandBlockOutput true"},"hoverEvent":{"action":"show_text","value":"Enable Command Block Output"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule commandBlockOutput true"},"hoverEvent":{"action":"show_text","value":"Enable Command Block Output"}}]

# Daylight Cycle
execute store result score menu.rules.daylightCycle glib.data run gamerule doDaylightCycle
execute if score menu.rules.daylightCycle glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Daylight Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doDaylightCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Daylight Cycle"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doDaylightCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Daylight Cycle"}}]
execute if score menu.rules.daylightCycle glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Daylight Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doDaylightCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Daylight Cycle"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doDaylightCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Daylight Cycle"}}]

# Disable Elytra Movement Check
execute store result score menu.rules.elytraMovementCheck glib.data run gamerule disableElytraMovementCheck
execute if score menu.rules.elytraMovementCheck glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Elytra Movement Check: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule disableElytraMovementCheck false"},"hoverEvent":{"action":"show_text","value":"Enable Elytra Movement Check"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule disableElytraMovementCheck false"},"hoverEvent":{"action":"show_text","value":"Enable Elytra Movement Check"}}]
execute if score menu.rules.elytraMovementCheck glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Elytra Movement Check: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule disableElytraMovementCheck true"},"hoverEvent":{"action":"show_text","value":"Disable Elytra Movement Check"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule disableElytraMovementCheck true"},"hoverEvent":{"action":"show_text","value":"Disable Elytra Movement Check"}}]

# Entity Drops
execute store result score menu.rules.entityDrops glib.data run gamerule doEntityDrops
execute if score menu.rules.entityDrops glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Entity Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doEntityDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Entity Drops"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doEntityDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Entity Drops"}}]
execute if score menu.rules.entityDrops glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Entity Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doEntityDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Entity Drops"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doEntityDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Entity Drops"}}]


# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gray"},{"text":" "},{"text":"1/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Menu.Rules.Page_2"},"hoverEvent":{"action":"show_text","value":"Next page"}}]
