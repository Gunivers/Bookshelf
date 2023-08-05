# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: (1.0)
# Created: 03/08/2023 (1.20.1)
# Last verification: 03/08/2023 (1.20.1)
# Last modification: 03/08/2023 (1.20.1)

# Execution     : As players who are able to slide
# Original path : bs.smartmove:slide
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/smartmove.html#slide
# Note          : 

# CODE ------------------------------------------------------------------------

### DEBUG
# tellraw @a [{"text":"> bs.smartmove:slide","color":"aqua"},{"text":" as ","color":"gray"},{"selector":"@s"}]
execute if entity @s[scores={bs.smove.isCrouch=1..}] run say Crouch
execute if entity @s[scores={bs.smove.isRunning=1..}] run say Sprint
execute if entity @s[scores={bs.smove.isCrouch=1..,bs.smove.isRunning=1..}] run say Trigger

# Detecting a crouch just after a sprint (for players that are not already sliding)
execute as @s[scores={bs.smove.isCrouch=1..,bs.smove.isRunning=1..}, tag=!bs.smartmove.is_sliding] at @s run function bs.smartmove:slide/child/trigger

# Reset the trigger scores
scoreboard players set @s bs.smove.isRunning 0
scoreboard players set @s bs.smove.isCrouch 0

# EXPLAINATIONS ---------------------------------------------------------------

### Why using these two scores?
#   The best way in Minecraft to detect that the player is sprinting or crouching is to use custom objectives.
#   One is made to count the time during which the player is crouching (it is actualized automatically by the game).
#   The other is made to measure the distance traveled by the player during a sprint (also actualized automatically by the game).
#   The idea is then to detect if these scores are not 0, which means that the player is crouching or sprinting.
#   Then, the system reset these score to 0 in order to avoid false positive on the next tick.

### Why using an armor_stand?
#   When a player is teleported, he's position is actualised in the same tick so there is no teleportation animation.
#   However, other entities' position are actualised in the next tick, so there is a teleportation animation.
#   A funny thing is that when a player is riding an entity, the player's position is actualised in the next tick too.
#   He will then also have the animation, so the movement will be much more fluid.
#   The choice of armor_stand comes from the need of a light and small entity which exist on the client side.
#   In fact, markers would be perfect for this job... but they exist only on server side, so the player can't ride them.