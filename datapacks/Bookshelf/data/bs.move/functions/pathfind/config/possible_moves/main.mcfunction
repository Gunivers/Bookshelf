
# Link your own file with a bs.var3 value
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] if entity @s[scores={bs.var3=0}] run function bs.move:pathfind/config/possible_moves/terrestrial
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] if entity @s[scores={bs.var3=1}] run function bs.move:pathfind/config/possible_moves/aerial