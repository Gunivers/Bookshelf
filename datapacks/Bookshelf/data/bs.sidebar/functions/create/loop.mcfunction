$team add bs.sidebar.$(id).$(line)
$scoreboard players set $(score) bs.sidebar.$(id) 0
$team join bs.sidebar.$(id).$(line) $(score)

data remove storage bs:sidebar do.contents[0]
execute unless data storage bs:sidebar do.contents[0] run return 1

$data modify storage bs:sidebar do.score set value "$(score)‌"
execute store result storage bs:sidebar do.line int 1 run scoreboard players add #sidebar.line bs.data 1
function bs.sidebar:create/loop with storage bs:sidebar do
