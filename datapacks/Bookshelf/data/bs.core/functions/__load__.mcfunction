tellraw @a [{"text":"\n Thank you for using Bookshelf!\n","color":"dark_aqua","bold":true},{"text":" Share us your creations on twitter! ","color":"gray","bold":false},{"text":"@Gunivers_\n\n","color":"gold","bold":false,"clickEvent":{"action":"open_url","value":"https://twitter.com/Gunivers_"},"hoverEvent":{"action":"show_text","contents":"Visit our Twitter page"}},{"text":" > Open menu\n","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/function bs:menu"},"hoverEvent":{"action":"show_text","contents":"Click to open the Bookshelf menu"}}]

function bs.core:import/scores
function bs.core:import/constants

execute as @e[tag=bs.debug] run function bs.core:entity/safe_kill

scoreboard objectives add bs.metadata dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Active Modules","color":"aqua"}]
scoreboard players reset * bs.metadata

# Module list
function bs:menu
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
function bs.smartmove:_
function bs.time:_
function bs.tree:_
function bs.vector:_
function bs.view:_
function bs.xp:_
function bs.example:_
