$data modify storage bs:data sidebar.do.refresh set from storage bs:data sidebar.registry[{id:'$(id)'}].refresh

data modify storage bs:data sidebar.do.line set from storage bs:data sidebar.do.refresh[0].line
data modify entity @s text set from storage bs:data sidebar.do.refresh[0].text
data modify storage bs:data sidebar.do.text set from entity @s text

execute if data storage bs:data sidebar.do.refresh[0] run function bs.sidebar:refresh/loop with storage bs:data sidebar.do
