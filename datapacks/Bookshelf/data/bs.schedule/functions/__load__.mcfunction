scoreboard objectives add bs.const dummy
scoreboard players set 20 bs.const 20
scoreboard players set 1200 bs.const 1200
execute unless data storage bs:schedule scheduled_commands run data modify storage bs:schedule scheduled_commands set value []
