
# TITLE
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove glib.menu.Debug"},"hoverEvent":{"action":"show_text","value":"Exit Debugs"}},{"text":"   ","color":"gold"},{"text":"Debugs","underlined":true,"color":"gold"},{"text":"\n "}]


# DEBUG STICK

tellraw @s[tag=glib.debug.stick,tag=glib.debug.global.display_tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.global.display_tick"},"hoverEvent":{"action":"show_text","value":"Hide ticks"}}]
tellraw @s[tag=glib.debug.stick,tag=!glib.debug.global.display_tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.global.display_tick"},"hoverEvent":{"action":"show_text","value":"Display ticks"}}]

tellraw @s[tag=!glib.debug.stick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.stick"},"hoverEvent":{"action":"show_text","value":"Enable debug tool"}}]
clear @s[tag=!glib.debug.stick] debug_stick

# Core
tellraw @s[tag=!glib.debug.core.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Core","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Show section"}}]
tellraw @s[tag=glib.debug.core.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Core","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.core."},"hoverEvent":{"action":"show_text","value":"Hide section"}}]
tellraw @s[tag=glib.debug.core.] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

# Entity
function glib_core:menu/debug/entity/main

# Math
tellraw @s[tag=!glib.debug.math.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Show math functions"}}]
tellraw @s[tag=glib.debug.math.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.math."},"hoverEvent":{"action":"show_text","value":"Hide math functions"}}]
tellraw @s[tag=glib.debug.math.] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

# Object
tellraw @s[tag=!glib.debug.object.] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Show object modules"}}]
tellraw @s[tag=glib.debug.object.] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.object."},"hoverEvent":{"action":"show_text","value":"Hide object modules"}}]
tellraw @s[tag=glib.debug.object.] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

tellraw @s ["",{"text":"      ","color":"gray"}]
