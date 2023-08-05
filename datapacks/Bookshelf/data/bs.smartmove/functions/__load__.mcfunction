# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: (1.0)
# Created: 03/08/2023 (1.20.1)
# Last verification: 03/08/2023 (1.20.1)
# Last modification: 03/08/2023 (1.20.1)

# Execution     : Do not execute this function. It is automatically executed via the minecraft "load" tag.
# Original path : bs.smartmove:__load__
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/smartmove.html
# Note          : 

# CODE ------------------------------------------------------------------------

# Score declaration
scoreboard objectives add bs.smartmove.isRunning minecraft.custom:minecraft.sprint_one_cm [{"text":"Bookshelf.smartmove ","color":"grey"},{"text":"isRunning","color":"aqua"}]
scoreboard objectives add bs.smartmove.isCrouch minecraft.custom:minecraft.sneak_time [{"text":"Bookshelf.smartmove ","color":"grey"},{"text":"isCrouch","color":"aqua"}]
scoreboard objectives add bs.smartmove.x dummy [{"text":"Bookshelf.smartmove ","color":"grey"},{"text":"X","color":"aqua"}]
scoreboard objectives add bs.smartmove.y dummy [{"text":"Bookshelf.smartmove ","color":"grey"},{"text":"Y","color":"aqua"}]
scoreboard objectives add bs.smartmove.z dummy [{"text":"Bookshelf.smartmove ","color":"grey"},{"text":"Z","color":"aqua"}]

# Update metadata
scoreboard players set module.smartmove bs.metadata 1