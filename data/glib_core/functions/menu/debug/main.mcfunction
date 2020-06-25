
# TITLE
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu.Debug"},"hoverEvent":{"action":"show_text","value":"Exit Debugs"}},{"text":"   ","color":"gold"},{"text":"Debugs","underlined":true,"color":"gold"},{"text":"\n "}]


# DEBUG STICK

tellraw @s[tag=glib.debug.Stick,tag=glib.debug.global.display.tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.global.display.tick"},"hoverEvent":{"action":"show_text","value":"Hide ticks"}}]
tellraw @s[tag=glib.debug.Stick,tag=!glib.debug.global.display.tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.global.display.tick"},"hoverEvent":{"action":"show_text","value":"Display ticks"}}]

tellraw @s[tag=!glib.debug.Stick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.Stick"},"hoverEvent":{"action":"show_text","value":"Enable debug tool"}}]
clear @s[tag=!glib.debug.Stick] debug_stick

# Core
tellraw @s[tag=!glib.debug.core.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Core","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Show section"}}]
tellraw @s[tag=glib.debug.core.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Core","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Hide section"}}]
tellraw @s[tag=glib.debug.core.] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

# Entity
tellraw @s[tag=!glib.debug.entity.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.entity."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Entity","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.entity."},"hoverEvent":{"action":"show_text","value":"Show entity modules"}}]
tellraw @s[tag=glib.debug.entity.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.entity."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Entity","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.entity."},"hoverEvent":{"action":"show_text","value":"Hide entity modules"}}]
execute if entity @s[tag=glib.debug.entity.] run function glib_core:menu/debug/entity/main

# Math
tellraw @s[tag=!glib.debug.math.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Show math functions"}}]
tellraw @s[tag=glib.debug.math.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Hide math functions"}}]
tellraw @s[tag=glib.debug.math.] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

# Object
tellraw @s[tag=!glib.debug.object.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Show object modules"}}]
tellraw @s[tag=glib.debug.object.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Hide object modules"}}]
tellraw @s[tag=glib.debug.object.] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

tellraw @s ["",{"text":"      ","color":"gray"}]
