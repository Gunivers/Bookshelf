tellraw @a [{"text":"\n Thank you for using Glibs!\n","color":"dark_aqua","bold":true},{"text":" Share us your creations on twitter! ","color":"gray","bold":false},{"text":"@Gunivers_\n\n","color":"gold","bold":false,"clickEvent":{"action":"open_url","value":"https://twitter.com/Gunivers_"},"hoverEvent":{"action":"show_text","contents":"Visit our Twitter page"}},{"text":" > Open menu\n","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/function glib:menu"},"hoverEvent":{"action":"show_text","contents":"Click to open the Glibs menu"}}]

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
