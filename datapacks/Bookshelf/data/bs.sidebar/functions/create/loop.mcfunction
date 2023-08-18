$team add bs.sidebar.$(id).$(line)
$scoreboard players set $(score) bs.sidebar.$(id) 0
$team join bs.sidebar.$(id).$(line) $(score)

$data modify storage bs:in sidebar.create.score set value "$(score)‌"
execute store result storage bs:in sidebar.create.line int 1 run scoreboard players add #sidebar.line bs.data 1
execute if score #sidebar.line bs.data < #sidebar.height bs.data run function bs.sidebar:create/loop with storage bs:in sidebar.create
