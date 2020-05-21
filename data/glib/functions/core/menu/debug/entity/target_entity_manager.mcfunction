tag @e[distance=0.1..] remove Glib_Debug_entity.target_entity_manager

execute if entity @a[tag=Glib_Debug_entity.target_entity_manager] run tellraw @a[tag=Glib_Debug] [{"text":"> DEBUG | glib:entity/target_entity_manager","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove Glib_Debug_entity.target_entity_manager"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]

tag @e remove Glib_Debug_entity.entity_manager_selected

scoreboard players operation @e Glib_Id -= @s TargetId
tag @e[scores={Glib_Id=0},limit=1,sort=nearest] add Glib_Debug_entity.entity_manager_selected
scoreboard players operation @e Glib_Id += @s TargetId

execute unless entity @e[tag=Glib_Debug_entity.entity_manager_selected] run tellraw @a[tag=Glib_Debug] ["",{"text":"   No entity selected","color":"dark_gray"},{"text":" [Select]","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select an entity by setting your 'TargetId' score equal to the score 'Glib_Id' of your target entity"}}]

tellraw @a[tag=Glib_Debug] ["",{"text":"   Debug controlled by: ","color":"dark_gray"},{"selector":"@s","color":"gold"}]

# Selected Entity
execute if entity @e[tag=Glib_Debug_entity.entity_manager_selected] run tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.target_entity_manager] ["",{"text":"   Selected entity: ","color":"dark_gray"},{"selector":"@e[tag=Glib_Debug_entity.entity_manager_selected,limit=1,sort=nearest]","color":"gold"},{"text":"   Glib_Id:","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Glib_Id as TargetId)"}},{"text":" ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId "},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Glib_Id as TargetId)"}},{"score":{"name":"@e[tag=Glib_Debug_entity.entity_manager_selected,limit=1,sort=nearest]","objective":"Glib_Id"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId "},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Glib_Id as TargetId)"}},{"text":"   [Select]","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select an entity"}}]
execute if entity @e[tag=Glib_Debug_entity.entity_manager_selected] run tellraw @a[tag=Glib_Debug,tag=!Glib_Debug_entity.target_entity_manager] ["",{"text":"   Selected entity: ","color":"dark_gray"},{"selector":"@e[tag=Glib_Debug_entity.entity_manager_selected,limit=1,sort=nearest]","color":"gold"},{"text":"   Glib_Id:","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Glib_Id as TargetId)"}},{"text":" ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId "},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Glib_Id as TargetId)"}},{"score":{"name":"@e[tag=Glib_Debug_entity.entity_manager_selected,limit=1,sort=nearest]","objective":"Glib_Id"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId "},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Glib_Id as TargetId)"}}]


execute if entity @e[tag=Glib_Debug_entity.entity_manager_selected,type=!player] run tellraw @a[tag=Glib_Debug] ["",{"text":"   Actions: ","color":"dark_gray"},{"text":"[Go] ","color":"blue","clickEvent":{"action":"run_command","value":"/execute at @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected] run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Go to target"}},{"text":"[Grab] ","color":"green","clickEvent":{"action":"run_command","value":"/tp @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected] ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Bring back target"}},{"text":"[Glow] ","color":"gold","clickEvent":{"action":"run_command","value":"/effect give @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected] glowing 1 1 true"},"hoverEvent":{"action":"show_text","value":"Hightlight target"}},{"text":"[Reset] ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players reset @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected]"},"hoverEvent":{"action":"show_text","value":"Clear all target's scores"}},{"text":"[Kill]","color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected]"},"hoverEvent":{"action":"show_text","value":"Kill target"}}]
execute if entity @e[tag=Glib_Debug_entity.entity_manager_selected,type=player] run tellraw @a[tag=Glib_Debug] ["",{"text":"   Actions: ","color":"dark_gray"},{"text":"[Go] ","color":"blue","clickEvent":{"action":"run_command","value":"/execute at @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected] run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Go to target"}},{"text":"[Grab] ","color":"green","clickEvent":{"action":"run_command","value":"/tp @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected] ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Bring back target"}},{"text":"[Glow] ","color":"gold","clickEvent":{"action":"run_command","value":"/effect give @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected] glowing 1 1 true"},"hoverEvent":{"action":"show_text","value":"Hightlight target"}},{"text":"[Clear] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/clear @a[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected]"},"hoverEvent":{"action":"show_text","value":"Clear all items in it's inventory"}},{"text":"[Reset] ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players reset @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected]"},"hoverEvent":{"action":"show_text","value":"Clear all target's scores"}},{"text":"[Kill]","color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[limit=1,sort=nearest,tag=Glib_Debug_entity.entity_manager_selected]"},"hoverEvent":{"action":"show_text","value":"Kill target"}}]

function glib:core/debug/message/info/end_debug