tellraw @a [{"text":"\n Thank you for using Bookshelf!\n","color":"dark_aqua","bold":true},{"text":" Share us your creations on twitter! ","color":"gray","bold":false},{"text":"@Gunivers_\n\n","color":"gold","bold":false,"clickEvent":{"action":"open_url","value":"https://twitter.com/Gunivers_"},"hoverEvent":{"action":"show_text","contents":"Visit our Twitter page"}},{"text":" > Open menu\n","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/function bs:menu"},"hoverEvent":{"action":"show_text","contents":"Click to open the Bookshelf menu"}}]

scoreboard objectives add bs.activeModule dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Active Modules","color":"dark_gray"}]
scoreboard players reset * bs.activeModule

# Module list
function bs.biome:_
function bs.block:_
function bs.cache:_
function bs.color:_
function bs.health:_
function bs.id:_
function bs.item:_
function bs.link:_
function bs.location:_
function bs.mapedit:_
function bs.math:_
function bs.memory:_
function bs.move:_
function bs.orientation:_
function bs.schedule:_
function bs.time:_
function bs.tree:_
function bs.vector:_
function bs.view:_
function bs.xp:_
function gsys.example:_
function gsys.lgdir:_
