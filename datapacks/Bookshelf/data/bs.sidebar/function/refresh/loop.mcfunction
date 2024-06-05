$$(cmd) $(text)

data remove storage bs:ctx _.dyn[0]
execute unless data storage bs:ctx _.dyn[0] run return 1

data modify storage bs:ctx _.cmd set from storage bs:ctx _.dyn[0].cmd
data modify entity B5-0-0-0-2 text set from storage bs:ctx _.dyn[0].text
data modify storage bs:ctx _.text set from entity B5-0-0-0-2 text

return run function bs.sidebar:refresh/loop with storage bs:ctx _
