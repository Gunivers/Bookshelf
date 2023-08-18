$scoreboard objectives add bs.sidebar.$(id) dummy $(name)
$data modify storage bs:sidebar $(id) set value $(contents)

execute store result storage bs:in sidebar.create.line int 1 run scoreboard players set #sidebar.line bs.data 0
function bs.sidebar:create/loop with storage bs:in sidebar.create
