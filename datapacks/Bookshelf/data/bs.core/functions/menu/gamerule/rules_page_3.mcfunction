# NAME: Menu G-Lib
# PATH: bs:menu

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:


# Max Command Chain Length
execute store result score menu.rules.maxCommandChain bs.data run gamerule maxCommandChainLength
tellraw @s ["",{"text":"      - Max Command Chain Length: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength "},"hoverEvent":{"action":"show_text","value":"Modify Max Command Chain Length (Default: 65536)"}},{"score":{"name":"menu.rules.maxCommandChain","objective":"bs.ata"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength "},"hoverEvent":{"action":"show_text","value":"Modify Max Command Chain Length (Default: 65536)"}}]

# Max Entity Cramming
execute store result score menu.rules.maxEntityCramming bs.data run gamerule maxEntityCramming
tellraw @s ["",{"text":"      - Max Entity Cramming: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming "},"hoverEvent":{"action":"show_text","value":"Modify Max Entity Cramming (Default: 24)"}},{"score":{"name":"menu.rules.maxEntityCramming","objective":"bs.ata"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming "},"hoverEvent":{"action":"show_text","value":"Modify Max Entity Cramming (Default: 24)"}}]

# MobGriefing
execute store result score menu.rules.mobGriefing bs.data run gamerule mobGriefing
execute if score menu.rules.mobGriefing bs.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Griefing: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Griefing"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Griefing"}}]
execute if score menu.rules.mobGriefing bs.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Griefing: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Griefing"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Griefing"}}]

# MobLoot
execute store result score menu.rules.mobLoot bs.data run gamerule doMobLoot
execute if score menu.rules.mobLoot bs.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Loot: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Loot"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Loot"}}]
execute if score menu.rules.mobLoot bs.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Loot: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Loot"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Loot"}}]

# MobSpawning
execute store result score menu.rules.mobSpawning bs.data run gamerule doMobSpawning
execute if score menu.rules.mobSpawning bs.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Spawning: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Spawning"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Spawning"}}]
execute if score menu.rules.mobSpawning bs.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Spawning: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Spawning"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Spawning"}}]



# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove bs.menu.Rules.Page_3"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"3/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add bs.menu.Rules.Page_4"},"hoverEvent":{"action":"show_text","value":"Next page"}}]
