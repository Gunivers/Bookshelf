
# Link your own file with a bs.in.3 value
execute at @s unless entity @e[tag=bs_Pathfind_Target,distance=..0.7] if entity @s[scores={bs.in.3=0}] run function bs.move:pathfind/config/possible_moves/terrestrial
execute at @s unless entity @e[tag=bs_Pathfind_Target,distance=..0.7] if entity @s[scores={bs.in.3=1}] run function bs.move:pathfind/config/possible_moves/aerial