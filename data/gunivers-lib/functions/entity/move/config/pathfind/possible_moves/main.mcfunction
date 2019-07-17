execute if entity @s[scores={Var4=0}] run say 2

# Link your own file with a Var4 value
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] if entity @s[scores={Var4=0}] run function gunivers-lib:entity/move/config/pathfind/possible_moves/terrestrial
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] if entity @s[scores={Var4=1}] run function gunivers-lib:entity/move/config/pathfind/possible_moves/aerial