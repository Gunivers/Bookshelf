$team modify bs.sidebar.$(id).$(line) prefix $(text)

data remove storage bs:sidebar do.contents[0]
execute unless data storage bs:sidebar do.contents[0] run return 1

execute store result storage bs:sidebar do.line int 1 run scoreboard players add #sidebar.line bs.data 1
data modify entity @s text set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.text set from entity @s text
function bs.sidebar:refresh/loop with storage bs:sidebar do
