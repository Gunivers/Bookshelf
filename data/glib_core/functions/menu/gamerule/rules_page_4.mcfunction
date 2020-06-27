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


# Random Tick Speed
execute store result score menu.rules.tickSpeed glib.data run gamerule randomTickSpeed
tellraw @s ["",{"text":"      - Random Tick Speed: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule randomTickSpeed "},"hoverEvent":{"action":"show_text","value":"Modify Random Tick Speed (Default: 3)"}},{"score":{"name":"menu.rules.tickSpeed","objective":"glib.ata"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule randomTickSpeed "},"hoverEvent":{"action":"show_text","value":"Modify Random Tick Speed (Default: 3)"}}]

# Reduced Debug Info
execute store result score menu.rules.reduceDebug glib.data run gamerule reducedDebugInfo
execute if score menu.rules.reduceDebug glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Reduced Debug Info: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo false"},"hoverEvent":{"action":"show_text","value":"Disable Reduced Debug Info"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo false"},"hoverEvent":{"action":"show_text","value":"Disable Reduced Debug Info"}}]
execute if score menu.rules.reduceDebug glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Reduced Debug Info: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo true"},"hoverEvent":{"action":"show_text","value":"Enable Reduced Debug Info"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo true"},"hoverEvent":{"action":"show_text","value":"Enable Reduced Debug Info"}}]

# Send Command Feedback
execute store result score menu.rules.sendFeedback glib.data run gamerule sendCommandFeedback
execute if score menu.rules.sendFeedback glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Send Command Feedback: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"},"hoverEvent":{"action":"show_text","value":"Disable Send Command Feedback"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"},"hoverEvent":{"action":"show_text","value":"Disable Send Command Feedback"}}]
execute if score menu.rules.sendFeedback glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Send Command Feedback: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"},"hoverEvent":{"action":"show_text","value":"Enable Send Command Feedback"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"},"hoverEvent":{"action":"show_text","value":"Enable Send Command Feedback"}}]

# Show Death Messages
execute store result score menu.rules.deathMessage glib.data run gamerule showDeathMessages
execute if score menu.rules.deathMessage glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Show Death Messages: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages false"},"hoverEvent":{"action":"show_text","value":"Hide Death Messages"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages false"},"hoverEvent":{"action":"show_text","value":"Hide Death Messages"}}]
execute if score menu.rules.deathMessage glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Show Death Messages: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages true"},"hoverEvent":{"action":"show_text","value":"Show Death Messages"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages true"},"hoverEvent":{"action":"show_text","value":"Show Death Messages"}}]

# Spawn Radius
execute store result score menu.rules.spawnRadius glib.data run gamerule spawnRadius
tellraw @s ["",{"text":"      - Spawn Radius: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule spawnRadius "},"hoverEvent":{"action":"show_text","value":"Modify Spawn Radius (Default: 10)"}},{"score":{"name":"menu.rules.spawnRadius","objective":"glib.ata"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule spawnRadius "},"hoverEvent":{"action":"show_text","value":"Modify Spawn Radius (Default: 10)"}}]


# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove glib.menu.Rules.Page_4"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"4/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add glib.menu.Rules.Page_5"},"hoverEvent":{"action":"show_text","value":"Next page"}}]
