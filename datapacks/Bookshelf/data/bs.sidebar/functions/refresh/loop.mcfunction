$team modify bs.sidebar.$(id).$(line) prefix $(text)

data remove storage bs:sidebar do.refresh[0]
execute unless data storage bs:sidebar do.refresh[0] run return 1

data modify storage bs:sidebar do.line set from storage bs:sidebar do.refresh[0].line
data modify entity @s text set from storage bs:sidebar do.refresh[0].text
data modify storage bs:sidebar do.text set from entity @s text
function bs.sidebar:refresh/loop with storage bs:sidebar do
