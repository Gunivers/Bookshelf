# NAME: Init G-Lib
# PATH: gunivers-lib:init

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
execute store result score Glib_Init_Rules_TickSpeed Data run gamerule randomTickSpeed
tellraw @s ["",{"text":"      - Random Tick Speed: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule randomTickSpeed "},"hoverEvent":{"action":"show_text","value":"Modify Random Tick Speed (Default: 3)"}},{"score":{"name":"Glib_Init_Rules_TickSpeed","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule randomTickSpeed "},"hoverEvent":{"action":"show_text","value":"Modify Random Tick Speed (Default: 3)"}}]

# Reduced Debug Info
execute store result score Glib_Init_Rules_ReduceDebug Data run gamerule reducedDebugInfo
execute if score Glib_Init_Rules_ReduceDebug Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Reduced Debug Info: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo false"},"hoverEvent":{"action":"show_text","value":"Disable Reduced Debug Info"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo false"},"hoverEvent":{"action":"show_text","value":"Disable Reduced Debug Info"}}]
execute if score Glib_Init_Rules_ReduceDebug Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Reduced Debug Info: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo true"},"hoverEvent":{"action":"show_text","value":"Enable Reduced Debug Info"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule reducedDebugInfo true"},"hoverEvent":{"action":"show_text","value":"Enable Reduced Debug Info"}}]

# Send Command Feedback
execute store result score Glib_Init_Rules_SendFeedback Data run gamerule sendCommandFeedback
execute if score Glib_Init_Rules_SendFeedback Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Send Command Feedback: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"},"hoverEvent":{"action":"show_text","value":"Disable Send Command Feedback"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"},"hoverEvent":{"action":"show_text","value":"Disable Send Command Feedback"}}]
execute if score Glib_Init_Rules_SendFeedback Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Send Command Feedback: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"},"hoverEvent":{"action":"show_text","value":"Enable Send Command Feedback"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"},"hoverEvent":{"action":"show_text","value":"Enable Send Command Feedback"}}]

# Show Death Messages
execute store result score Glib_Init_Rules_DeathMessage Data run gamerule showDeathMessages
execute if score Glib_Init_Rules_DeathMessage Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Show Death Messages: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages false"},"hoverEvent":{"action":"show_text","value":"Hide Death Messages"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages false"},"hoverEvent":{"action":"show_text","value":"Hide Death Messages"}}]
execute if score Glib_Init_Rules_DeathMessage Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Show Death Messages: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages true"},"hoverEvent":{"action":"show_text","value":"Show Death Messages"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule showDeathMessages true"},"hoverEvent":{"action":"show_text","value":"Show Death Messages"}}]

# Spawn Radius
execute store result score Glib_Init_Rules_SpawnRadius Data run gamerule spawnRadius
tellraw @s ["",{"text":"      - Spawn Radius: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule spawnRadius "},"hoverEvent":{"action":"show_text","value":"Modify Spawn Radius (Default: 10)"}},{"score":{"name":"Glib_Init_Rules_SpawnRadius","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule spawnRadius "},"hoverEvent":{"action":"show_text","value":"Modify Spawn Radius (Default: 10)"}}]


# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_4"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"4/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Rules_Page_5"},"hoverEvent":{"action":"show_text","value":"Next page"}}]