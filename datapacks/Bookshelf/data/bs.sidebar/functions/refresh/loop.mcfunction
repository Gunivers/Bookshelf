$team modify bs.sidebar.$(id).$(line) prefix $(text)

data remove storage bs:data sidebar.do.refresh[0]
execute unless data storage bs:data sidebar.do.refresh[0] run return 1

data modify storage bs:data sidebar.do.line set from storage bs:data sidebar.do.refresh[0].line
data modify entity @s text set from storage bs:data sidebar.do.refresh[0].text
data modify storage bs:data sidebar.do.text set from entity @s text

function bs.sidebar:refresh/loop with storage bs:data sidebar.do
