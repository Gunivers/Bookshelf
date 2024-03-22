$data modify entity B5-0-0-0-2 text set value '{"score":{"name":"#dump.var","objective":"bs.data"},"color":"$(number)"}'
data modify storage bs:out dump append from entity B5-0-0-0-2 text
