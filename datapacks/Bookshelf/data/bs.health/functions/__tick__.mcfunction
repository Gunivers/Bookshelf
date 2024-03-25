# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

execute as @e[scores={bs.ttl=0}] run function bs.health:time_to_live/time_out with entity @s
scoreboard players remove @e[scores={bs.ttl=1..}] bs.ttl 1
