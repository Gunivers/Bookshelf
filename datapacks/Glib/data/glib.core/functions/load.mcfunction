tellraw @a ["",{"text":"---------------------","color":"dark_aqua"},{"text":"\n"},{"text":">","color":"gold"},{"text":"      Gunivers","color":"dark_aqua"},{"text":".","color":"gold"},{"text":"Libs      ","color":"dark_aqua"},{"text":"<","color":"gold"},{"text":"\n"},{"text":"---------------------","color":"dark_aqua"},{"text":"\n\n"},{"text":"Thanks you for using the","color":"gray"},{"text":" Gunivers","color":"dark_aqua"},{"text":".","color":"gold"},{"text":"Libs","color":"dark_aqua"},{"text":" project!\n\nWe hope you will find everything you search here!","color":"gray"},{"text":"\n\n"},{"text":"[Documentation] ","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://glib-core.readthedocs.io/"},"hoverEvent":{"action":"show_text","contents":"Click to open the documentation"}},{"text":"[Contribute]","color":"gold","clickEvent":{"action":"open_url","value":"https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/glib-core"},"hoverEvent":{"action":"show_text","contents":"Click to open the Gitlab repository"}},{"text":" ","color":"gold","clickEvent":{"action":"open_url","value":"https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/glib-core"}},{"text":"\n"},{"text":"[Contact Us]","color":"green","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","contents":"Click to join our Discord"}},{"text":" [Support the project]","color":"light_purple","clickEvent":{"action":"open_url","value":"https://utip.io/gunivers"},"hoverEvent":{"action":"show_text","contents":"Click to go on our Utip page"}}]

scoreboard objectives add glib.activeModule dummy [{"text":"GLib ","color":"gold"},{"text":"Active Modules","color":"dark_gray"}]
scoreboard players reset * glib.activeModule

# Module list
function glib.biome:_
function glib.block:_
function glib.cache:_
function glib.color:_
function glib.health:_
function glib.id:_
function glib.item:_
function glib.link:_
function glib.location:_
function glib.mapedit:_
function glib.math:_
function glib.memory:_
function glib.move:_
function glib.orientation:_
function glib.schedule:_
function glib.time:_
function glib.tree:_
function glib.vector:_
function glib.view:_
function glib.xp:_
function gsys.example:_
function gsys.lgdir:_
